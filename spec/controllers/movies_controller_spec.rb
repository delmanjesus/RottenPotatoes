require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  let!(:movie) { Movie.create!(title: 'Test Movie', rating: 'PG', release_date: Date.today) }

  describe 'GET #index' do
    it 'assigns all movies to @movies' do
      get :index
      expect(assigns(:movies)).to include(movie)
    end

    it 'filters movies by rating' do
      movie2 = Movie.create!(title: 'R Movie', rating: 'R', release_date: Date.today)
      get :index, params: { ratings: { 'PG' => 'PG' } }
      expect(assigns(:movies)).to include(movie)
      expect(assigns(:movies)).not_to include(movie2)
    end

    it 'sorts movies by title' do
      get :index, params: { sort: 'title' }
      expect(assigns(:sort)).to eq('title')
      expect(assigns(:title_header)).to eq('hilite')
    end
  end

  describe 'GET #show' do
    it 'assigns the requested movie to @movie' do
      get :show, params: { id: movie.id }
      expect(assigns(:movie)).to eq(movie)
    end
  end

  describe 'POST #create' do
    context 'with valid parameters' do
      it 'creates a new movie' do
        expect {
          post :create, params: { movie: { title: 'New Movie', rating: 'G' } }
        }.to change(Movie, :count).by(1)
      end

      it 'redirects to movies index' do
        post :create, params: { movie: { title: 'New Movie', rating: 'G' } }
        expect(response).to redirect_to(movies_path)
      end
    end

    context 'with invalid parameters' do
      it 'does not create a movie' do
        expect {
          post :create, params: { movie: { title: '', rating: 'G' } }
        }.not_to change(Movie, :count)
      end
    end
  end
end
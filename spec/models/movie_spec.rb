require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'validations' do
    it 'requires a title' do
      movie = Movie.new(rating: 'G', release_date: Date.today)
      expect(movie).not_to be_valid
      expect(movie.errors[:title]).to include("can't be blank")
    end

    it 'requires a valid rating' do
      movie = Movie.new(title: 'Test Movie', rating: 'INVALID')
      expect(movie).not_to be_valid
      expect(movie.errors[:rating]).to include('is not included in the list')
    end

    it 'accepts valid ratings' do
      %w[G PG PG-13 R NC-17].each do |rating|
        movie = Movie.new(title: 'Test Movie', rating: rating)
        expect(movie).to be_valid
      end
    end
  end

  describe '.all_ratings' do
    it 'returns all possible ratings' do
      expect(Movie.all_ratings).to eq(%w[G PG PG-13 R NC-17])
    end
  end
end
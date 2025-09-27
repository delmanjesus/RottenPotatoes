class MoviesController < ApplicationController
  def index
    @filmes = Movie.all
  end

  def show
    @filme = Movie.find(params[:id])
  end

  def new
    @filme = Movie.new
  end

  def create
    @filme = Movie.new(params.require(:movie).permit(:title, :rating))
    if @filme.save
      redirect_to movies_path
    else
      render :new
    end
  end
end
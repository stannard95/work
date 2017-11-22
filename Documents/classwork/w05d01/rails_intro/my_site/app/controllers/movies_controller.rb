class MoviesController < ApplicationController
  def index
    @movies = Movie.all

  end

  def show
    @movie = Movie.find(params[:id])

  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    movie = Movie.new
    movie.title = params[:title]
    movie.desc = params[:description]
    movie.age_r = params[:age_r]
    movie.save

    redirect_to "/movies"
  end

  def new

  end

  def update
    id = params[:id]
    movie = Movie.find(id)
    movie.title = params[:title]
    movie.desc = params[:description]
    movie.age_r = params[:age_r]
    movie.save

    redirect_to "/movies"
  end

  def destroy
    id = params[:id]
    Movie.destroy(id)
    redirect_to "/movies"

  end
end

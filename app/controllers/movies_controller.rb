class MoviesController < ApplicationController
  skip_before_action :authorized

  def index
    movies = Movie.all
    render json: movies
  end

  def reviews 
    movie = Movie.find(params[:id])
    reviews = movie.reviews

    render json: reviews
  end


end

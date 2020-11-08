class MoviesController < ApplicationController
  skip_before_action :authorized

  def index
    movies = Movie.all
    render json: movies
  end


end

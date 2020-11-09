class UserMoviesController < ApplicationController

  def create
    @user_movie = UserMovie.create(user_movie_params)
    
  end


  private 

  def user_movie_params
    params.require(:user_movie).permit!
  end
end

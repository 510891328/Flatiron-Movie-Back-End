class UserMoviesController < ApplicationController
  # skip_before_action :authorized

  def create
    @user_movie = UserMovie.create(user_movie_params)

  end

  def purchase
    token = JWT.decode(params[:token], 'my_s3cr3t', 'HS256')

    user = User.find(token[0]['user_id'])

    movie = Movie.find(params[:movie])

    if user.movies.include?(movie)
      render json: {message: 'Movie Existed'}
    else
      purchased_movie = UserMovie.create(user: user, movie: movie)
      render json: purchased_movie
    end
  end

  private

  def user_movie_params
    params.require(:user_movie).permit!
  end
end

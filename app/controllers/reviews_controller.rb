class ReviewsController < ApplicationController
  skip_before_action :authorized 
  
  def create
    
    token = JWT.decode(params[:token], 'my_s3cr3t', 'HS256')

    user = User.find(token[0]['user_id'])

    movie = Movie.find(params[:movie])

    content = params[:content]

    review = Review.create(user: user, movie: movie, content: content)

    render json: review
  end

  def update
    review = Review.find(params[:id])

    updated_content = params[:content]
    
    review.update(content: updated_content)

    render json: review
  end

  def delete
    review = Review.find(params[:id])
    
    review.destroy

    render json: {}
  end

  private

  def review_params
    params.require(:review).permit!
  end
end

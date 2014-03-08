class ReviewsController < ApplicationController
  def create
    review = Review.new
    review.product_id = params[:product_id]
    review.user_id = params[:user_id]
    review.comment = params[:comment]
    review.rating = params[:rating]
    review.save
    redirect_to "/products/#{review.product_id}/show"
  end

  def index
  end
end

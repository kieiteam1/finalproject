class ReviewsController < ApplicationController
  def create
    review = Review.new
    review.title = params[:title]
    review.deal_id = params[:deal_id]
    review.user_id = params[:user_id]
    review.comment = params[:comment]
    review.rating = params[:rating]
    review.save
    redirect_to "/deals/#{review.deal_id}/show"
  end

  def index
      review = Review.all.where(:deal_id => @deal.id)
  end

end

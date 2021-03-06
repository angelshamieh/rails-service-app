class ReviewsController < ApplicationController
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to services_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id)
  end
end

class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new(review_params)
    if @review.save
      flash[:notice] = 'review was successfully created.'
      redirect_to @restaurant
    else
      flash.now[:alert] = 'Error creating review. Please try again.'
      render :new
    end
  end

  #private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end

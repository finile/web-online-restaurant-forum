class RestaurantCommentsController < ApplicationController
  before_action :set_restaurant

  def create
    @comment = @restaurant.comments.create(comment_params)
    @comment.user = current_user
    @comment.save!
    redirect_to restaurant_path(@restaurant)
  end

  private

  def comment_params
    params[:comment].permit(:restaurant_id, :user_id, :comment_id, :comment)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  
end

class RestaurantsController < ApplicationController

  def index
    @categories = Category.all
    @restaurants = Restaurant.page(params[:page]).per(9)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end

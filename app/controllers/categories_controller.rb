class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category

  def show
    @categories = Category.all
    @restaurants = @category.restaurants.page(params[:page]).per(10)
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end
end

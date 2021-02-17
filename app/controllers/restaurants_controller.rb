class RestaurantsController < ApplicationController

  before_action :find_restaurant, only: [:show]

   def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(strong_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def strong_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end

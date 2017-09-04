class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @defaults = Restaurant.default_choices
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
  end
end

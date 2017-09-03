class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @defaults = Restaurant.default_choices
  end
end

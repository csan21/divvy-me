class RestuarantsController < ApplicationController
  def index
    @all_restuarants = Restuarant.all
  end
end

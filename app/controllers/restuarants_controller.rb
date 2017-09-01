class RestuarantsController < ApplicationController
  def index
    @restuarants = Restuarant.all
    @defaults = Restuarant.default_restuarants
  end
end

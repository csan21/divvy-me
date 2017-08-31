class RestuarantsController < ApplicationController
  def index
    @restuarants = Restuarant.all
    @default = Restuarant.default_restuarants
  end
end

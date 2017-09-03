class VotesController < ApplicationController
  def create
    if logged_in?
      restaurant = Restaurant.find(params[:id])
      vote = Vote.new(restaurant_id: restaurant.id, voter_id: current_user.id)

      if check_vote?(vote, restaurant)
        vote.save
        redirect_back(fallback_location: root_path)
      end
    end
  end
end

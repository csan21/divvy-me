class VotesController < ApplicationController
  def create
    if logged_in?
      restuarant = Restuarant.find(params[:id])
      vote = Vote.new(restuarant_id: restuarant.id, voter_id: current_user.id)

      if vote.check_vote?(vote, restuarant)
        vote.save
        redirect_to root_path
      end
    end
  end
end

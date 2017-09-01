class VotesController < ApplicationController
  def create
    if logged_in?
      @restuarant = Restuarant.find(params[:id])
      @vote = Vote.new(restuarant_id: @restuarant.id, voter_id: current_user.id)

      if vote_check?(@vote, @restuarant)
        @vote.save
        render :new
      end
    end
  end
end

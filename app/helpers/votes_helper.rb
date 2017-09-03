module VotesHelper
  def check_vote?(vote, restaurant)
    vote.voter_id != restaurant.creator_id
  end
end

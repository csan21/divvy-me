module VotesHelper
  def check_vote?(vote, restuarant)
    vote.voter_id != restuarant.creator_id
  end
end

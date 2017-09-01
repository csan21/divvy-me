class Vote < ApplicationRecord
  belongs_to :voter, class_name: :User
  belongs_to :restuarant

  def vote_check?(vote, restuarant)
    vote.voter_id != restuarant.creator_id
  end
end

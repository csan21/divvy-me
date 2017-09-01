class Vote < ApplicationRecord
  belongs_to :voter, class_name: :User
  belongs_to :restuarant

  validates_uniqueness_of :voter_id, scope: :restuarant_id

  def check_vote?(vote, restuarant)
    vote.voter_id != restuarant.creator_id
  end
end

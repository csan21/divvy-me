class Vote < ApplicationRecord
  belongs_to :voter, class_name: :User
  belongs_to :restuarant

  validates_uniqueness_of :voter_id, scope: :restuarant_id
end

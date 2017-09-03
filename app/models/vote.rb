class Vote < ApplicationRecord
  belongs_to :voter, class_name: :User
  belongs_to :restaurant

  validates_uniqueness_of :voter_id, scope: :restaurant_id
end

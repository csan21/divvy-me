class Restuarant < ApplicationRecord
  belongs_to :employee
  has_many :votes
  has_many :items
end

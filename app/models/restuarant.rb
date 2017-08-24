class Restuarant < ApplicationRecord
  belongs_to :employee
  has_many :votes
  has_many :items

  validates :name, presence: true, uniqueness: true
end

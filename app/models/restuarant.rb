class Restuarant < ApplicationRecord
  belongs_to :employee
  has_many :votes
  has_many :items

  validates :name, presence: true, uniqueness: true

  # Default restuarants that are always on the list
  def self.default_restuarants
    Restuarant.all.select { |restuarant| restuarant[:optional] == false }
  end
end

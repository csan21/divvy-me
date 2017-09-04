class Restaurant < ApplicationRecord
  belongs_to :creator, class_name: :User
  has_many :votes
  has_many :items

  validates :name, presence: true, uniqueness: true

  # Default restaurants that are always on the list
  def self.default_choices
    Restaurant.all.select { |restaurant| restaurant[:optional] == false }
  end

  def self.optional_choices
    Restaurant.all.select { |restaurant| restaurant[:optional] == true }
  end
end

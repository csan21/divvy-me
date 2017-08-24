class Employee < ApplicationRecord
  has_secure_password
  has_many :items
  has_many :restuarants
  has_many :votes, through: :restuarants

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end

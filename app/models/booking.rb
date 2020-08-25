class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :jungle
  has_many :waterings

  #adding VALIDATION
  validates :number_of_plants, presence: true
  validates :key, presence: true
  validates :price, presence: true
end

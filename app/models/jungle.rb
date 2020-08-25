class Jungle < ApplicationRecord
  #Raffa fixing associations with Santi
  #the following were not correct
  #belongs_to :booking, optional: true
  #has_many :plants, through: :jungleplants

  has_many :bookings
  belongs_to :user
  has_many :jungleplants
  has_many :plants, through: :jungleplants

  #adding VALIDATION
  validates :name, presence: true, length: { minimum: 4,
    too_short: "4 characters is the minimum allowed" }
  validates :address, presence: true
end

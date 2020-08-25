class Jungle < ApplicationRecord
  belongs_to :booking, optional: true
  belongs_to :user
  has_many :plants, through: :jungleplants

  #adding VALIDATION
  validates :name, presence: true, length: { minimum: 4,
    too_short: "4 characters is the minimum allowed" }
  validates :address, presence: true
end

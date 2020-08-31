class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :jungle, optional: true
  has_many :waterings, dependent: :destroy
  monetize :price_cents

  #adding VALIDATION
  validates :number_of_plants, presence: true
  validates :key, presence: true
  # validates :price, presence: true

end

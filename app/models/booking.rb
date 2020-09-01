class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :jungle, optional: true
  has_many :waterings, dependent: :destroy
  monetize :price_cents

  #adding VALIDATION
  validates :number_of_plants, presence: true
  validates :key, presence: true
  validates_associated :waterings
  # validates :price, presence: true

  def days
  	water_days = []
  	waterings.each do |watering|
  	  water_days << watering.date.strftime("%b %d, %Y")
  	end
    water_days
  	# water_days.join(" / ")
  end
end

class Watering < ApplicationRecord
  belongs_to :booking

  #adding VALIDATION
  validates :date, presence: true
end

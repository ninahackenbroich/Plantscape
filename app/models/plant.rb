class Plant < ApplicationRecord

  #adding VALIDATION
  validates :name, presence: true
  validates :water
  validates :light
  validates :soil
  validates :fertilizer
  validates :repotting

end

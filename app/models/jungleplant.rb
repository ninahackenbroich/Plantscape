class Jungleplant < ApplicationRecord
  has_many :plants
  has_many :jungles

  #adding VALIDATION
  validates :comments, length: { maximum: 300,
    too_long: "%{count} characters is the maximum allowed" }
  validates :status, presence: true
end

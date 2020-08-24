class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :jungle
  has_many :waterings
end

class Jungle < ApplicationRecord
  belongs_to :booking, optional: true
  belongs_to :user
  has_many :plants, through: :jungleplants
end

class Jungleplant < ApplicationRecord
  has_many :plants
  has_many :jungles
end

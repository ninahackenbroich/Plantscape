class Plant < ApplicationRecord
  #Raffa fixing associations with Santi
  has_many :jungle_plants
  has_many :jungles, through: :jungle_plants

  #adding VALIDATION
  validates :name, presence: true

end

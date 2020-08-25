class Plant < ApplicationRecord
  #Raffa fixing associations with Santi
  has_many :jungleplants
  has_many :jungles, through: :jungleplants

  #adding VALIDATION
  validates :name, presence: true

end

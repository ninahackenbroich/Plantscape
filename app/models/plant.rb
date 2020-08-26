class Plant < ApplicationRecord
  #Raffa fixing associations with Santi
  has_many :jungleplants
  has_many :jungles, through: :jungleplants

  #adding VALIDATION
  validates :name, presence: true
  validates :water, presence: true, inclusion: { in: ["every day", "once per week", "rare"],
    message: "dosen't accept %{value} as option" }

end

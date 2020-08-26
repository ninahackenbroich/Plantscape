class Plant < ApplicationRecord
  #Raffa fixing associations with Santi
  has_many :jungleplants
  has_many :jungles, through: :jungleplants

  #adding VALIDATION
  validates :name, presence: true
  validates :water, presence: true, inclusion: { in: ["Every day", "Once per week", "Rare"],
    message: "dosen't accept %{value} as option" }
  validates :light, presence: true, inclusion: { in: ["Direct light", "Shodow is better", "Everywhere"],
    message: "dosen't accept %{value} as option" }
  validates :soil, presence: true, inclusion: { in: ["Sand", "Silt", "Clay", "Mixed soil"],
    message: "dosen't accept %{value} as option" }
  validates :fertilizer, presence: true, inclusion: { in: ["Spring-Summer: Once every 2 weeks", "Spring-Summer: Once every week", "Whole Year: Once every month"],
    message: "dosen't accept %{value} as option" }
  validates :repotting, presence: true, inclusion: { in: ["Every 12 to 18 months: Repotting in a bigger pot", "Every 8 to 12 months: It likes medium pots", "Avoid repotting"],
    message: "dosen't accept %{value} as option" }

end

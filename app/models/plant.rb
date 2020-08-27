class Plant < ApplicationRecord
  #Raffa fixing associations with Santi
  has_many :jungleplants
  has_many :jungles, through: :jungleplants

  has_one_attached :photo

  #adding VALIDATION
  validates :name, presence: true
  validates :water, presence: true, inclusion: { in: ["Every day", "Once per week", "Rare"],
    message: "doesn't accept %{value} as option" }
  validates :light, presence: true, inclusion: { in: ["Direct light", "Shadow is better", "Everywhere"],
    message: "doesn't accept %{value} as option" }
  validates :soil, presence: true, inclusion: { in: ["Sand", "Silt", "Clay", "Mixed soil"],
    message: "doesn't accept %{value} as option" }
  validates :fertilizer, presence: true, inclusion: { in: ["Spring-Summer: Once every 2 weeks", "Spring-Summer: Once every week", "Whole Year: Once every month"],
    message: "doesn't accept %{value} as option" }
  validates :repotting, presence: true, inclusion: { in: ["Every 12 to 18 months: Repotting in a bigger pot", "Every 8 to 12 months: It likes medium pots", "Avoid repotting"],
    message: "doesn't accept %{value} as option" }

end

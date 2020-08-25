class Plant < ApplicationRecord

  #adding VALIDATION
  validates :name, presence: true

end

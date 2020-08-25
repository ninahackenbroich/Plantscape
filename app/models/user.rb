class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :jungles

  #adding VALIDATION
  validates :first_name, presence: true, length: { minimum: 2,
    too_short: "2 characters is the minimum allowed" }
  validates :last_name, presence: true, length: { minimum: 2,
    too_short: "2 characters is the minimum allowed" }
  # validates :email, presence: true, length: { minimum: 10 }
  # validates :password, presence: true, length: { minimum: 6 }

end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :jungles
  has_many :orders
  has_many :reviews

  has_many :chatrooms, foreign_key: :customer_id, class_name: 'Chatroom'
  has_many :superchats, foreign_key: :admin_id, class_name: 'Chatroom'

  #adding VALIDATION
  validates :first_name, presence: true, length: { minimum: 2,
    too_short: "2 characters is the minimum allowed" }
  validates :last_name, presence: true, length: { minimum: 2,
    too_short: "2 characters is the minimum allowed" }
  # validates :email, presence: true, length: { minimum: 10 }
  # validates :password, presence: true, length: { minimum: 6 }
    after_create :generate_chatroom

  private

  def generate_chatroom
    unless admin
      chatroom = Chatroom.new
      chatroom.customer_id = self.id
      chatroom.admin_id = User.first.id
      chatroom.save
    end
  end
end

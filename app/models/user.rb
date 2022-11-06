class User < ApplicationRecord
 
  has_many :meetings, through: :user_meetings
  has_many :user_meetings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

class Member < ApplicationRecord
  has_many :meetings, through: :member_meetings
  has_many :member_meetings
end

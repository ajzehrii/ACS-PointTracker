class Attendance < ApplicationRecord
  belongs_to :member 
  belongs_to :meeting
end

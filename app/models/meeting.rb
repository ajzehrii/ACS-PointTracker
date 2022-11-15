# frozen_string_literal: true

class Meeting < ApplicationRecord
  has_many :members, through: :member_meetings
  has_many :member_meetings
end

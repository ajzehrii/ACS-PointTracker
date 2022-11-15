# frozen_string_literal: true

class MemberMeeting < ApplicationRecord
  belongs_to :member
  belongs_to :meeting
end

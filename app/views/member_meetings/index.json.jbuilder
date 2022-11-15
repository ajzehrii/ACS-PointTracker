# frozen_string_literal: true

json.array! @member_meetings, partial: 'member_meetings/member_meeting', as: :member_meeting

json.extract! member_meeting, :id, :member_id, :meeting_id, :created_at, :updated_at
json.url member_meeting_url(member_meeting, format: :json)

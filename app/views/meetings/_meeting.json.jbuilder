json.extract! meeting, :id, :meeting_ID, :date, :name, :description, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)

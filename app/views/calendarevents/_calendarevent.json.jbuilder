json.extract! calendarevent, :id, :name, :description, :start_time, :end_time, :created_at, :updated_at
json.url calendarevent_url(calendarevent, format: :json)

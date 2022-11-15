# frozen_string_literal: true

json.extract! member, :id, :student_ID, :first, :last, :created_at, :updated_at
json.url member_url(member, format: :json)

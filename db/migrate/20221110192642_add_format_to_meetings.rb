# frozen_string_literal: true

class AddFormatToMeetings < ActiveRecord::Migration[6.1]
  def change
    add_column :meetings, :format, :string
  end
end

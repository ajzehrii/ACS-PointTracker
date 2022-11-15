# frozen_string_literal: true

class AddEndTimeToMeetings < ActiveRecord::Migration[6.1]
  def change
    add_column :meetings, :end_time, :datetime
  end
end

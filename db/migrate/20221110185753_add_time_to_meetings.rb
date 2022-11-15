# frozen_string_literal: true

class AddTimeToMeetings < ActiveRecord::Migration[6.1]
  def change
    add_column :meetings, :time, :time
  end
end

# frozen_string_literal: true

class AddMinuteToMeetings < ActiveRecord::Migration[6.1]
  def change
    add_column :meetings, :minute, :int
  end
end

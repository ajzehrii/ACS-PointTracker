class AddHourToMeetings < ActiveRecord::Migration[6.1]
  def change
    add_column :meetings, :hour, :int
  end
end

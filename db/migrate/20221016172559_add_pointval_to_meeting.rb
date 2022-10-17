class AddPointvalToMeeting < ActiveRecord::Migration[6.1]
  def change
    add_column :meetings, :pointval, :integer
  end
end

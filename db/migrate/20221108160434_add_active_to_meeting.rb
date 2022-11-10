class AddActiveToMeeting < ActiveRecord::Migration[6.1]
  def change
    add_column :meetings, :active, :boolean, default: false
  end
end

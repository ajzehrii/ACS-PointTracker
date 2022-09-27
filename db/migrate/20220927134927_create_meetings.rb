class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|
      t.integer :meeting_ID
      t.date :date
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

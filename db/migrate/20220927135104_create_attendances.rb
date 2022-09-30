class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.integer :meeting_ID
      t.integer :student_ID

      t.timestamps
    end
  end
end

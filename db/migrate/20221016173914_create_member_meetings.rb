class CreateMemberMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :member_meetings do |t|
      t.integer :member_id
      t.integer :meeting_id

      t.timestamps
    end
  end
end

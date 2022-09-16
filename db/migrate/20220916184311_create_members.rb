class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.integer :student_ID
      t.string :first
      t.string :last

      t.timestamps
    end
  end
end

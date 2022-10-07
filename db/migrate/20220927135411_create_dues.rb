class CreateDues < ActiveRecord::Migration[6.1]
  def change
    create_table :dues do |t|
      t.string :semester_ID
      t.integer :student_ID
      t.boolean :paid
      t.float :ammount

      t.timestamps
    end
  end
end

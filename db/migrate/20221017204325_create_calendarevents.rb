class CreateCalendarevents < ActiveRecord::Migration[6.1]
  def change
    create_table :calendarevents do |t|
      t.string :name
      t.text :description
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end

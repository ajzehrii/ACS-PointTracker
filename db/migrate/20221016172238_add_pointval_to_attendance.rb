# frozen_string_literal: true

class AddPointvalToAttendance < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :pointval, :integer
  end
end

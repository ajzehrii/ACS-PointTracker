# frozen_string_literal: true

class AddIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :student_id, :integer
  end
end

# frozen_string_literal: true

class CreateAcsAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :acs_admins do |t|
      t.integer :admin_ID
      t.integer :student_ID
      t.string :username
      t.string :password
      t.string :position

      t.timestamps
    end
  end
end

# frozen_string_literal: true

class CreateEmails < ActiveRecord::Migration[6.1]
  def change
    create_table :emails do |t|
      t.string :address

      t.timestamps
    end
  end
end

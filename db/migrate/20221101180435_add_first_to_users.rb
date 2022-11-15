# frozen_string_literal: true

class AddFirstToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first, :string
  end
end

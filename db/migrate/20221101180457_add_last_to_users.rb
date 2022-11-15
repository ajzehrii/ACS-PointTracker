# frozen_string_literal: true

class AddLastToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :last, :string
  end
end

class AddDuesToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :dues, :boolean, default:false
  end
end

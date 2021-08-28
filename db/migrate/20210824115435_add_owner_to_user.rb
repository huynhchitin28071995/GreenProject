class AddOwnerToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :owner, :integer, default: 0
  end
end

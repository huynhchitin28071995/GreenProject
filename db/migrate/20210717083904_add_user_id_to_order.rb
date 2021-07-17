class AddUserIdToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :user_id, :integer, default: 0;
  end
end

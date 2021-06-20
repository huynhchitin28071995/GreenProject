class AddOrdersToUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :orders_id
    remove_column :users, :orders_id
    remove_column :orders, :users_id
    remove_column :orders, :products_id
    remove_column :orders, :user_id
    add_reference :users, :orders
    add_reference :orders, :products
    add_reference :products, :order
    add_reference :orders, :user, foreign_key: true
  end
end

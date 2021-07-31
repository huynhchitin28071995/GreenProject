class AddSubtotalCountToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :subtotal, :float, default: 0.0
    add_column :orders, :counter, :integer, default: 0
  end
end

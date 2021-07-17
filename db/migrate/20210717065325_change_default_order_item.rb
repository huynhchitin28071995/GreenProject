class ChangeDefaultOrderItem < ActiveRecord::Migration[6.1]
  def change
    change_column_default :order_items, :price, from: nil, to: 0
    change_column_default :order_items, :quantity, from: nil, to: 0
  end
end

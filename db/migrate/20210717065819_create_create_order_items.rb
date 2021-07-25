class CreateCreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.references :orders, null: false, foreign_key: true
      t.references :products, null: false, foreign_key: true
      t.integer :price, default: 0
      t.integer :quantity, default: 0

      t.timestamps
    end
  end
end

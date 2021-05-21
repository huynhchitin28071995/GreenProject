class AlterDiscountOfProduct < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :discount, :decimal
  end
end

class AddHotToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :hot, :boolean
  end
end

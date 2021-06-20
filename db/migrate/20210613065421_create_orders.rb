class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :description
      t.string :destination

      t.timestamps
    end
  end
end

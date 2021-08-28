class CreateShippingInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :shipping_infos do |t|
      t.string :address
      t.string :phone
      t.references :user

      t.timestamps
    end
  end
end

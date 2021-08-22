class AddPhoneToShippingInfo < ActiveRecord::Migration[6.1]
  def change
    add_column :shipping_infos, :phone, :string
  end
end

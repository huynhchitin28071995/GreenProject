class AddProductToGifts < ActiveRecord::Migration[6.1]
  def change
    add_reference :gifts, :product_id
  end
end

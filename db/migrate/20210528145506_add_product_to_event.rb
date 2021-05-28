class AddProductToEvent < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :product, foreign_key: true, null: false
  end
end

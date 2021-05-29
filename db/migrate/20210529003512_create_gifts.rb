class CreateGifts < ActiveRecord::Migration[6.1]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :type
      t.integer :quantity

      t.timestamps

    end
  end
end

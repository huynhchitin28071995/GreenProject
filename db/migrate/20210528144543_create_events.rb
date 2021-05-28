class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.decimal :discount
      t.string :gift
      t.boolean :hot_sale

      t.timestamps
    end
  end
end

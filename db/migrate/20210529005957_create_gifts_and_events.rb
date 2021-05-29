class CreateGiftsAndEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :gifts_and_events do |t|
      t.integer :event_id
      t.integer :gift_id
      t.integer :quantity
      t.datetime :promotion_date

      t.timestamps
    end
  end
end

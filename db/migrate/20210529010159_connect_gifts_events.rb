class ConnectGiftsEvents < ActiveRecord::Migration[6.1]
  def change
    add_reference :gifts_and_events, :event_id, foreign_key: true
    add_reference :gifts_and_events, :gift_id, foreign_key: true
  end
end

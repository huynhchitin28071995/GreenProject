class RemoveColumnFrom < ActiveRecord::Migration[6.1]
  def change
    remove_column :gifts_and_events, :gift_id
    remove_column :gifts_and_events, :event_id
    add_reference :gifts_and_events, :event, foreign_key: true
    add_reference :gifts_and_events, :gift, foreign_key: true
  end
end

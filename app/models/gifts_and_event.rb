# == Schema Information
#
# Table name: gifts_and_events
#
#  id             :integer          not null, primary key
#  promotion_date :datetime
#  quantity       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  event_id       :integer
#  gift_id        :integer
#
# Indexes
#
#  index_gifts_and_events_on_event_id  (event_id)
#  index_gifts_and_events_on_gift_id   (gift_id)
#
# Foreign Keys
#
#  event_id  (event_id => events.id)
#  gift_id   (gift_id => gifts.id)
#
class GiftsAndEvent < ApplicationRecord
    # has_many :events
    # has_many :gifts
end

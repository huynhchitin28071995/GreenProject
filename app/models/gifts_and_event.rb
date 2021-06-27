# == Schema Information
#
# Table name: gifts_and_events
#
#  id             :bigint           not null, primary key
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
#  fk_rails_...  (event_id => events.id)
#  fk_rails_...  (gift_id => gifts.id)
#
class GiftsAndEvent < ApplicationRecord
    # has_many :events
    # has_many :gifts
end

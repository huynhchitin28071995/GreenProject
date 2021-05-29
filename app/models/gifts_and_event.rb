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
class GiftsAndEvent < ApplicationRecord
    belongs_to :events
    belongs_to :gifts
end

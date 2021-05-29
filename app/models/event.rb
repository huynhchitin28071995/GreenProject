# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  discount   :decimal(, )
#  gift       :string
#  hot_sale   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :integer          not null
#
# Indexes
#
#  index_events_on_product_id  (product_id)
#
# Foreign Keys
#
#  product_id  (product_id => products.id)
#
class Event < ApplicationRecord
    belongs_to :product
    has_many :gifts_and_events, class_name: "gifts_and_event", foreign_key: "event_id"
end

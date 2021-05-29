# == Schema Information
#
# Table name: gifts
#
#  id            :integer          not null, primary key
#  name          :string
#  quantity      :integer
#  type          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  product_id_id :integer
#
# Indexes
#
#  index_gifts_on_product_id_id  (product_id_id)
#
class Gift < ApplicationRecord
    has_many :gifts_and_events, class_name: "gifts_and_event", foreign_key: "gift_id"
end

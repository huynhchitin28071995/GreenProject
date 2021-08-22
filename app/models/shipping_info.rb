# == Schema Information
#
# Table name: shipping_infos
#
#  id         :bigint           not null, primary key
#  address    :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_shipping_infos_on_user_id  (user_id)
#
class ShippingInfo < ApplicationRecord
    belongs_to :user
end

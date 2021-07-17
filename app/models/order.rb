# == Schema Information
#
# Table name: orders
#
#  id          :bigint           not null, primary key
#  description :string
#  destination :string
#  status      :integer          default("in_cart")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  products_id :integer
#  user_id     :integer
#
# Indexes
#
#  index_orders_on_products_id  (products_id)
#  index_orders_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  enum status: %i[in_cart to_confirm confirmed to_ship shipping shipped completed canceled refunded]
end

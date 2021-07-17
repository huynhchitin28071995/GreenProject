# == Schema Information
#
# Table name: create_order_items
#
#  id          :bigint           not null, primary key
#  price       :integer          default(0)
#  quantity    :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  orders_id   :bigint           not null
#  products_id :bigint           not null
#
# Indexes
#
#  index_create_order_items_on_orders_id    (orders_id)
#  index_create_order_items_on_products_id  (products_id)
#
# Foreign Keys
#
#  fk_rails_...  (orders_id => orders.id)
#  fk_rails_...  (products_id => products.id)
#
class CreateOrderItem < ApplicationRecord 
  belongs_to :order
  belongs_to :product

  def total
    self.price * self.quantity 
  end
end

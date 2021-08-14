# == Schema Information
#
# Table name: orders
#
#  id          :bigint           not null, primary key
#  counter     :integer          default(0)
#  description :string
#  destination :string
#  status      :integer          default(0)
#  subtotal    :float            default(0.0)
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
  has_many :order_items, dependent: :destroy
  enum status: %i[in_cart to_confirm confirmed to_ship shipping shipped completed canceled refunded]

  def counter_item
    update(counter: self.order_items.count)
  end

  def update_subtotal
    update(subtotal: self.order_items.sum('price * quantity'))
  end

  def total
    sum = 0
    order_items.each do |i|
      sum += i.quantity * i.price * (1 - (i.product.event&.discount || 0))
    end
    sum.to_i
  end
end

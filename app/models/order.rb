# == Schema Information
#
# Table name: orders
#
#  id         :bigint           not null, primary key
#  counter    :integer          default(0)
#  status     :integer
#  subtotal   :float            default(0.0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          default(0)
#
class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items; dependent :destroy

  enum status: [:in_cart, :to_confirm, :confirmed, :to_ship, :shipping, :shipped, :conpleted, :cancled, :refunded]

  def counter_item
    update(counter: self.order_items.count)
  end

  def update_subtotal
    update(subtotal: self.order_items.sum('price * quantity'))
  end
end

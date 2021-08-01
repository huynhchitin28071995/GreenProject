# == Schema Information
#
# Table name: order_items
#
#  id         :bigint           not null, primary key
#  price      :integer          default(0)
#  quantity   :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :bigint           not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_order_items_on_order_id    (order_id)
#  index_order_items_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (order_id => orders.id)
#  fk_rails_...  (product_id => products.id)
#
class OrderItem < ApplicationRecord 
  belongs_to :order
  belongs_to :product
  
  after_commit :update_total
  after_commit :update_counter
  def total
    self.price * self.quantity 
  end

  private

  def update_total
    self.order.update_subtotal
  end

  def update_counter
    
    self.order.update_counter
  end

end

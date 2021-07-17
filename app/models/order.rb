# == Schema Information
#
# Table name: orders
#
#  id         :bigint           not null, primary key
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          default(0)
#
class Order < ApplicationRecord
  belongs_to :user

  has_many :create_order_items

  enum status: [:in_cart, :to_confirm, :confirmed, :to_ship, :shipping, :shipped, :conpleted, :cancled, :refunded]
end

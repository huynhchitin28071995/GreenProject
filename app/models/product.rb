# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  description     :text
#  name            :string
#  pakage          :string
#  price           :integer          default(0)
#  sku             :string
#  unit            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  manufacturer_id :integer          not null
#
# Indexes
#
#  index_products_on_manufacturer_id  (manufacturer_id)
#
# Foreign Keys
#
#  manufacturer_id  (manufacturer_id => manufacturers.id)
#
class Product < ApplicationRecord
    belongs_to :manufacturer
end

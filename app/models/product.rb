# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  description :text
#  name        :string
#  package     :string
#  price       :integer          default(0)
#  sku         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Product < ApplicationRecord
end

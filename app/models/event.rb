# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  discount   :decimal(, )
#  gift       :string
#  hot_sale   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Event < ApplicationRecord
    belongs_to :product
    translates :description
end

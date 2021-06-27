# == Schema Information
#
# Table name: slides
#
#  id          :bigint           not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Slide < ApplicationRecord
  has_one_attached :image
  translates :description
  globalize_accessors locale: I18n.available_locales, attributes: [:description]

  def thumbnail
    if !image.nil? && image.attached? 
      return url_for(image)
    end
  end
end

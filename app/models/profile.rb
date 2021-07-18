# == Schema Information
#
# Table name: profiles
#
#  id         :bigint           not null, primary key
#  address    :string
#  dob        :date
#  first_name :string
#  last_name  :string
#  phone      :string
#  sex        :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
class Profile < ApplicationRecord
  belongs_to :user
  enum sex: %i[unknown male female]

  def name
    "#{first_name}  #{last_name}"
  end
end

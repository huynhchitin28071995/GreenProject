class Shop
  attr_reader :name, :address, :phone, :email

  def initialize
    @shop = User.shop.first
  end

  def name
    @shop.profile.name
  end

  def address
    @shop.profile.address
  end

  def phone
    @shop.profile.phone
  end

  def email
    @shop.email
  end
end

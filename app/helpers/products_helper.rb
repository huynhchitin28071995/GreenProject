# Provide discount?(product), discount(product)

module ProductsHelper
  def discount(product)
    product.price - product.price * product.event.discount
  end

  def discount?(product)
    product.event&.discount&.positive?
  end
end

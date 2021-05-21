# Provide discount?(product), discount(product)

module ProductsHelper
  def discount(product)
    product.price - product.price * product.discount
  end

  def discount?(product)
    product.nil? && product.discount.positive?
  end
end

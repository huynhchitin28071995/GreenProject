module ProductsHelper
    def discount(product)
        product.price - product.price * product.events[:discount]
    end

    def discount?(product)
        product.events[:discount] > 0
    end
end

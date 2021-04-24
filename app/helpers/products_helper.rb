module ProductsHelper
    def discount(product)
        product.price-(product.price * product.events[:discount].to_f/100.0).round(0)
    end
end

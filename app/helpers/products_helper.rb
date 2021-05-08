module ProductsHelper
    def discount(product)
       product.price - (product.price * product.event[:discount].to_f/100) 
    end
end

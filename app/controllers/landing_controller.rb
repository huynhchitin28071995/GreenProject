class LandingController < ApplicationController
    layout 'landing'
    before_action :fetch_product, :fetch_slide
    def index
  
    end


    private
    def fetch_slide
        @slides = Slide.all
    end

    def fetch_product
        @products_hot = Product.where(hot: true)
        @products_recommended = Product.all
        @products_new = Product.all
    end


end

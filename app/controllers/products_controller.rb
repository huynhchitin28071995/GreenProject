class ProductsController < ApplicationController
  before_action :fetch_product
  def index
  end

  def show
    @product=Product.find_by(id:params[:id])
    if @cart
      @item=@cart.order_items.find_by(product_id: params[:id])
    end
  end
  private
  def fetch_product

    @products=Product.all

  end
end

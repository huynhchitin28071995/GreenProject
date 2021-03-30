class ProductsController < ApplicationController
  def index

    controller/products: before_action :authenticate_user!

  end
end

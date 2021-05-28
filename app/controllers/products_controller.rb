# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :authenticate_user!, :fetch_product
  def index; end
  def fetch_product
    @products = Product.all
  end

end

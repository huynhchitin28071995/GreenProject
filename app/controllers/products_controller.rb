# frozen_string_literal: true

class ProductsController < ApplicationController
  # before_action :authenticate_user!,
  before_action :fetch_product
  def index; end

  def show
    @product = Product.find_by(id: params[:id])
    @related_products = Product.find_by_sql("SELECT * FROM PRODUCTS WHERE NAME LIKE '%#{@product.name.split[0]}%'")
  end

  private

  def fetch_product
    @products = Product.all
  end

  def fetch_event
    @products.each do |product|
    end
  end
end

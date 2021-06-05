class ProductDetailController < ApplicationController
  before_action :fetch_product
  def index; end

  def fetch_product
    @product = Product.find_by(id: :id) unless params[:id].nil?
  end
end

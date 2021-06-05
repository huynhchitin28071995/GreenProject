# frozen_string_literal: true

class ProductsController < ApplicationController
  # before_action :authenticate_user!, 
  before_action :fetch_product
  def index; end

  def show
    @product = Product.find_by(id: params[:id])
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

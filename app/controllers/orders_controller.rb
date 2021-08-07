class OrdersController < ApplicationController
  before_action: authenticate_user!

  def index
  end

  def show
    @cart =Order.find_by(id: params[:id])
  end



end

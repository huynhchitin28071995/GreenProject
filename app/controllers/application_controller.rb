class ApplicationController < ActionController::Base
    around_action :set_locale
    before_action :get_cart

    private
    def set_locale
        locale = session[:locale] || I18n.default_locale
        I18n.locale = locale
        yield
    end
    def get_cart
      return unless user_signed_in?
      p current_user
      @cart = current_user.cart || current_user.orders.create

    end


end

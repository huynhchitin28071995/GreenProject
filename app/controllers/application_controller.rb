class ApplicationController < ActionController::Base
    around_action :set_locale
    before_action :get_cart, :fetch_languages, :set_tax_rate, :shop_info

    private
    def shop_info
      @shop = Shop.new
    end

    def fetch_languages
      @languages = [{ value: 'Tiếng Việt', id: :vi }, { value: 'English', id: :en }].map { |l| OpenStruct.new(l) }
      # @locale = session[:locale] || I18n.default_locale
      # lay locale tu ApplicationController
    end

    def set_tax_rate
      @tax_rate = 0.1
    end

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

# frozen_string_literal: true

class ApplicationController < ActionController::Base
    around_action :set_locale

    private
    def set_locale
        locale = session[:locale] || I18n.default_locale
        I18n.locale = locale
        yield
    end
end

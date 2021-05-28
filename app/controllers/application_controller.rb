# frozen_string_literal: true

class ApplicationController < ActionController::Base
  around_action :set_locale
  before_action :fetch_languages

  private
  def fetch_languages
    @languages = [{ value: 'Tiếng Việt', id: :vi }, { value: 'English', id: :en }].map { |l| OpenStruct.new(l) }
    # @locale = session[:locale] || I18n.default_locale
    # lay locale tu ApplicationController
  end
  def set_locale
    locale = session[:locale] || I18n.default_locale
    I18n.locale = locale
    yield
  end
end

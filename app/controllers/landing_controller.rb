# frozen_string_literal: true

class LandingController < ApplicationController
  layout 'landing'
  before_action :fetch_product, :fetch_slide, :fetch_languages
  def index; end

  private

  def fetch_slide
    @slides = Slide.all
  end

  def fetch_product
    @products = Product.all
  end

  def fetch_languages
    @languages = [{ value: 'Tiếng Việt', id: :vi }, { value: 'English', id: :en }].map { |l| OpenStruct.new(l) }
    # @locale = session[:locale] || I18n.default_locale
    # lay locale tu ApplicationController
  end
end

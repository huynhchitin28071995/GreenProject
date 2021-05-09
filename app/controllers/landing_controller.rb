# frozen_string_literal: true

class LandingController < ApplicationController
  layout 'landing'
  before_action :fetch_product, :fetch_slide
  def index; end

  private
  def fetch_slide
    @slides = Slide.all
  end
  def fetch_product
    @products = [

      {
        id: 1,
        name: 'thuoc a',
        image: 'vitamins/vitamin1.jpg',
        nsx: 'Pharmacity',
        npp: 'Green Academy',
        events: {
          hot: true,
          km: false,
          discount: 0.1
        },

        price: 100
      },

      {
        id: 2,
        name: 'thuoc b',
        image: 'vitamins/vitamin2.jpg',
        nsx: 'Pharmacity',
        npp: 'Green Academy',
        events: {
          hot: true,
          km: true,
          discount: 0.1
        },
        price: 100
      },

      {
        id: 3,
        name: 'thuoc c',
        image: 'vitamins/vitamin3.jpg',
        nsx: 'Pharmacity',
        npp: 'Green Academy',
        events: {
          hot: true,
          km: true,
          discount: 0.1
        },
        price: 100
      },

      {
        id: 4,
        name: 'thuoc d',
        image: 'vitamins/vitamin4.jpg',
        nsx: 'Pharmacity',
        npp: 'Green Academy',
        events: {
          hot: false,
          km: false,
          discount: 0
        },
        price: 100
      },

      {
        id: 5,
        name: 'thuoc e',
        image: 'vitamins/vitamin5.jpg',
        nsx: 'Pharmacity',
        npp: 'Green Academy',
        events: {
          hot: false,
          km: false,
          discount: 0.1
        },
        price: 100
      }
    ]
    @products = @products.map { |item| OpenStruct.new(item) }
  end
end

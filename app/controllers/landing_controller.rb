# frozen_string_literal: true

class LandingController < ApplicationController
  layout 'landing'
  before_action :fetch_product
  def index; end

  private

  def fetch_product
    @products = [
      OpenStruct.new(
      {
        id: 1,
        name: 'thuoc a',
        image: 'http://placeimg.com/300/480/arch/grayscale',
        nsx: 'Pharmacity',
        npp: 'Green Academy',
        hot: true,
        km: false,
        discount: 0.1,
        price: 100
      }),
      OpenStruct.new(
      {
        id: 2,
        name: 'thuoc b',
        image: 'http://placeimg.com/300/480/arch/grayscale',
        nsx: 'Pharmacity',
        npp: 'Green Academy',
        hot: true,
        km: false, discount: 0.1,
        price: 100
      }),
      OpenStruct.new(
      {
        id: 3,
        name: 'thuoc c',
        image: 'http://placeimg.com/300/480/arch/grayscale',
        nsx: 'Pharmacity',
        npp: 'Green Academy',
        hot: true,
        km: false, discount: 0.1,
        price: 100
      }),
      OpenStruct.new(
      {
        id: 4,
        name: 'thuoc d',
        image: 'http://placeimg.com/300/480/arch/grayscale',
        nsx: 'Pharmacity',
        npp: 'Green Academy',
        hot: true,
        km: false, discount: 0.1,
        price: 100
      }),
      OpenStruct.new(
      {
        id: 5,
        name: 'thuoc e',
        image: 'http://placeimg.com/300/480/arch/grayscale',
        nsx: 'Pharmacity',
        npp: 'Green Academy',
        hot: true,
        km: false, discount: 0.1,
        price: 100
      })
    ]
  end
end

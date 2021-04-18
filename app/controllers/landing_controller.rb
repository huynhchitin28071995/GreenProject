class LandingController < ApplicationController
  layout 'landing'
  before_action :fetch_product  
  def index
  end

  private
  def fetch_product
   @products =
   {
     id: 1,
     name: 'thuoc troi noi',
     image: 'https://via.placeholder.com/600x400',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     hot: true,
     km: false,
     price: 200,
     discount: 0
   },
   {
     id: 2,
     name: 'thuoc troi noi',
     image: 'https://via.placeholder.com/150x100',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     hot: true,
     km: true,
     price: 200,
     discount: '10%'
   },
   {
     id: 3,
     name: 'thuoc troi noi',
     image: 'https://via.placeholder.com/150x100',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     hot: true,
     km: false,
     price: 200,
     discount: 0
   },
   {
     id: 4,
     name: 'thuoc troi noi',
     image: 'https://via.placeholder.com/150x100',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     hot: true,
     km: false,
     price: 200,
     discount: 0
   },
   {
     id: 5,
     name: 'thuoc troi noi',
     image: 'https://via.placeholder.com/150x100',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     hot: true,
     km: true,
     price: 200,
     discount: '10%'
   },
   {
     id: 6,
     name: 'thuoc troi noi',
     image: 'https://via.placeholder.com/150x100',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     hot: true,
     km: false,
     price: 200,
     discount: 0
   },
   {
     id: 7,
     name: 'thuoc troi noi',
     image: 'https://via.placeholder.com/150x100',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     hot: true,
     km: false,
     price: 200,
     discount: 0
   },
   {
     id: 8,
     name: 'thuoc troi noi',
     image: 'https://via.placeholder.com/150x100',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     hot: true,
     km: true,
     price: 150,
     discount: '10%'
   },
   {
     id: 9,
     name: 'thuoc troi noi',
     image: 'https://via.placeholder.com/150x100',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     hot: true,
     km: false,
     price: 200,
     discount: 0
   }
  end
end

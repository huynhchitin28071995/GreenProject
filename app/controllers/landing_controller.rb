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
     name: 'thuoc 1',
     image: 'https://via.placeholder.com/640x640',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     price: 200,
     event: {
       hot: true,
       gift: true,
     }
   },
   {
     id: 2,
     name: 'thuoc 2',
     image: 'https://via.placeholder.com/150x100',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     price: 200,
     event: {
       hot: true,
       discount: '10%',
     }
   },
   {
     id: 3,
     name: 'thuoc 3',
     image: 'https://via.placeholder.com/150x100',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     price: 200,
     event: {
      hot: true,
      km: true,
     }
   },
   {
     id: 4,
     name: 'thuoc 4',
     image: 'https://via.placeholder.com/150x100',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     price: 200,  
     event: {
      hot: true,
      km: true,
      discount: '10%',
     }
   },
   {
    id: 5,
    name: 'thuoc 5',
    image: 'https://via.placeholder.com/150x100',
    nsx: 'Pharmacity',
    npp: 'Green Academy',
    price: 200,  
    event: {
     hot: true,
     km: true,
     discount: '10%',
    }
  },{
    id: 6,
    name: 'thuoc 6',
    image: 'https://via.placeholder.com/150x100',
    nsx: 'Pharmacity',
    npp: 'Green Academy',
    price: 200,  
    event: {
     hot: true,
     km: true,
     discount: '10%',
    }
  }
   
   @products = @products.map{|item| OpenStruct.new(item) }
  end
end

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
     image: 'https://vhea.org.vn/wp-content/uploads/2020/04/thuoc-tri-ho-hieu-qua.jpg',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     price: 200.000,
     event: {
       hot: true,
       gift: true,
     }
   },
   {
     id: 2,
     name: 'thuoc troi noi',
     image: 'https://cdn.thegioididong.com/Products/Images/5792/199026/thuoc-giam-ho-pms-dexipharm-15mg-vi-200.000-vien-2-700x467.jpg',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     price: 200.000,
     event: {
       hot: true,
       discount: '10%',
     }
   },
   {
     id: 3,
     name: 'thuoc troi noi',
     image: 'https://vhea.org.vn/wp-content/uploads/2020/04/thuoc-tri-ho-khan-nam-ha.jpg',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     price: 200.000,
     event: {
      hot: true,
      km: true,
     }
   },
   {
     id: 4,
     name: 'thuoc troi noi',
     image: 'https://incontinet.com/wp-content/uploads/toplexil-90ml.jpg',
     nsx: 'Pharmacity',
     npp: 'Green Academy',
     price: 200.000,  
     event: {
      hot: true,
      km: true,
      discount: '10%',
     }
   },
   {
    id: 5,
    name: 'thuoc troi noi',
    image: 'https://vhea.org.vn/wp-content/uploads/2020/04/thuoc-tri-ho-3.jpg',
    nsx: 'Pharmacity',
    npp: 'Green Academy',
    price: 200.000,  
    event: {
     hot: true,
     km: true,
     discount: '10%',
    }
  },{
    id: 6,
    name: 'thuoc troi noi',
    image: 'https://incontinet.com/wp-content/uploads/thuoc-khang-sinh-dieu-tri-ho-khan-codein.jpg',
    nsx: 'Pharmacity',
    npp: 'Green Academy',
    price: 200.000,  
    event: {
     hot: true,
     km: true,
     discount: '10%',
    }
  }
   
   @products = @products.map{|item| OpenStruct.new(item) }
  end
end

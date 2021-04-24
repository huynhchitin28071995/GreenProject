class LandingController < ApplicationController
    layout 'landing'
    before_action :fetch_product
    def index
  
    end


    private
    def fetch_product
        @product = [
            {
            id: 1,
            name:'thuoc abc_1', 
            image: 'https://via.placeholder.com/300x150',
            nsx: 'Pharmacity', 
            npp: 'Green Academy',
            price: 100,
            discount:'10%',
            events: {
                hot: true,
                gift:true,
            }
        },
        {
            id: 2,
            name:'thuoc abc_1', 
            image: 'https://via.placeholder.com/300x150',
            nsx: 'Pharmacity', 
            npp: 'Green Academy',
            price: 100,
            events: {
                discount:'10%',
                hot: true,
                gift:true,
            }
        },
        {
            id: 3,
            name:'thuoc abc_1', 
            image: 'https://via.placeholder.com/300x150',
            nsx: 'Pharmacity', 
            npp: 'Green Academy',
            price: 100,
            events: {
                discount:'10%',

            }
        },
        {
            id: 4,
            name:'thuoc abc_1', 
            image: 'https://via.placeholder.com/300x150',
            nsx: 'Pharmacity', 
            npp: 'Green Academy',
            price: 100,
            events: {
                hot: true,
                discount:'10%',
            }
        },
        {
            id: 5,
            name:'thuoc abc_1', 
            image: 'https://via.placeholder.com/300x150',
            nsx: 'Pharmacity', 
            npp: 'Green Academy',
            price: 100,
            discount:'10%',
            events: {
                hot: true,
                gift:true,
            }
        },
        {
            id: 6,
            name:'thuoc abc_1', 
            image: 'https://via.placeholder.com/300x150',
            nsx: 'Pharmacity', 
            npp: 'Green Academy',
            price: 100,
            discount:'10%',
            events: {
                hot: true,
                gift:true,
            }
        },
        {
            id: 7,
            name:'thuoc abc_1', 
            image: 'https://via.placeholder.com/300x150',
            nsx: 'Pharmacity', 
            npp: 'Green Academy',
            price: 100,
            discount:'10%',
            events: {
                hot: true,
                gift:true,
            }
        }
    ]
            @product = @product.map{ |item| OpenStruct.new(item)}
    end


end

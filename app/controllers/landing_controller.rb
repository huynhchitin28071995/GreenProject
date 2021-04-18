class LandingController < ApplicationController
    layout 'landing'
    before_action :fetch_product
    def index
  
    end


    private
    def fetch_product
        @product = {
            id: 1,
            name:'thuoc abc_1', 
            image: 'https://via.placeholder.com/300x150',
            nsx: 'Pharmacity', 
            npp: 'Green Academy',
            hot: true,
            km: false,
            price: 100,
            discount:'10%'
        },
        {
            id: 2,
            name:'thuoc abc_2', 
            image: 'https://via.placeholder.com/300x150',
            nsx: 'Pharmacity', 
            npp: 'Green Academy',
            hot: true,
            km: false,
            price: 100,
            discount:'10%'
        },
        {
            id: 3,
            name:'thuoc abc_3', 
            image: 'https://via.placeholder.com/300x150',
            nsx: 'Pharmacity', 
            npp: 'Green Academy',
            hot: true,
            km: false,
            price: 100,
            discount:'10%'
        },
        {
            id: 4,
            name:'thuoc abc_4', 
            image: 'https://via.placeholder.com/300x150',
            nsx: 'Pharmacity', 
            npp: 'Green Academy',
            hot: true,
            km: false,
            price: 100,
            discount:'10%'
        },
        {
            id: 5,
            name:'thuoc abc_5', 
            image: 'https://via.placeholder.com/300x150',
            nsx: 'Pharmacity', 
            npp: 'Green Academy',
            hot: true,
            km: false,
            price: 100,
            discount:'10%'
        },
        {
            id: 6,
            name:'thuoc abc_6', 
            image: 'https://via.placeholder.com/300x150',
            nsx: 'Pharmacity', 
            npp: 'Green Academy',
            hot: true,
            km: false,
            price: 100,
            discount:'10%'
        },
        {
            id: 7,
            name:'thuoc abc_7', 
            image: 'https://via.placeholder.com/300x150',
            nsx: 'Pharmacity', 
            npp: 'Green Academy',
            hot: true,
            km: false,
            price: 100,
            discount:'10%'
        }
    end
end

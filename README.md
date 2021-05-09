# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
- placeholder.com, placeimg.com : tao hinh
- tao tai khoan AWS
- windows terminal preview : multiple command line.
- stimulus yarn

- Controller: ROR
    + Chat, noti, subscribe.
- Front-end: javascript, view.
- home : create landing page : create view, controller (for non-login customers)
    login
        failed: login.
        success: home + other navbar, unlocked features.


- lam` landing page: 
    dong contact.
    slider. //Max-height: 80vh
    slider: dang ky, dang nhap.
    san pham: 
        hinh, 
        ten, 
        gia, 
        khuyen mai: y/n, 
        nha sx, 
        nha pp.
https://splidejs.com/
//TODO: solution trong action dua hang hoa vao gio

rails g model Product name:string sku:string price:integer description:text
rails g migration add_package_to_product package:string
rails db:rollback
rails g migration remove_package_out_product
rails g model Manufacturer name:string alias:string
rails g migration add_manufacturer_to_product manufacturer:references
Product.pluck(:name)
Product.select(:name)

// 8/5/2021
- splidejs.com
    + lazy loading.
    yarn add @splidejs/splide
    rails webpacker:install:stimulus
    rails g generator stimulus/controller
    rails g stimulus:controller --help
    rails g stimulus:controller splide

    picsum.photos
    yarn add wowjs
    animate.css
    stimulus.hotwire.dev

    - Admin: Trestle.
    - rails g model Slide description:text
    - rails -T
    - rails active_storage:install
    //TODO: lua chon vi tri noi dung trong slider.

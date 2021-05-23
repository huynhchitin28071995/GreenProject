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
    - bundle add globalize
    - rails g migration create_slide_translation
    - bundle add globalize-accessors
    - bundle add trestle
    - rails g trestle:install
    - rails g trestle:resource Slide
    - bundle add trestle-active_storage
    - yarn add lozad
    //TODO: lua chon vi tri noi dung trong slider.


<section name='products-splide' id='products-splide' data-controller='products-splide'>
    <div class="splide" id="product-splide" data-products-splide-target='splide'></div>
</section>
- chu y data-controller='products-splide', data-products-splide-target='splide': moi init va connect vao controller dc.
- chu y ten *_controller.js tring voi data-controller

<img src=<%=load_image(product.image)%> alt="sample"> : khong de load-lazy
product.image.nil? => always true
product.image.value.nil? => true/false

- map from hash to Object
    @languages = [{ value: 'Tiếng Việt', id: 'lang_vi' }, { value: 'English', id: 'lang_en' }]
    @languages = @languages.map { |l| OpenStruct.new(l) }
https://github.com/thoughtbot/administrate
https://github.com/thoughtbot/administrate
https://github.com/activeadmin/activeadmin
https://github.com/sferik/rails_admin
stimulus_reflex
https://docs.stimulusreflex.com/hello-world/quickstart
https://redis.io/
sudo apt install redis-server 
sudo service redis-server start
sudo service redis-server status 
https://api.rubyonrails.org/classes/AbstractController/Callbacks/ClassMethods.html
https://edgeguides.rubyonrails.org/i18n.html 
bundle add stimulus_reflex
rails stimulus_reflex:install
rails g stimulus_reflex lang
switch_lang(event) { } 
//TODO: Tao trang san pham: tat ca san pham de xem chi tiet/add vao gio hang, trang chi tiet san pham

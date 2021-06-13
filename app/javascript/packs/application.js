import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"
console.log('hehe')

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import '../stylesheets/application.scss'
import NavbarTrigger from '../js/events/navbar_event'
const images = require.context('../images',true)

// import Splide from'@splidejs/splide';

document.addEventListener("DOMContentLoaded", function(){
    NavbarTrigger()
    // new Splide ( '#splide', {}).mount()
})

import "controllers"

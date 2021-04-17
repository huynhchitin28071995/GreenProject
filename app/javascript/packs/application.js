import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"


import NavbarTrigger from '../js/events/navbar_event'
import '../stylesheets/application.scss'
const images = require.context('../images',true)

document.addEventListener("DOMContentLoaded", function(){
    NavbarTrigger()
})

// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import '../stylesheets/application'
import NavBarTrigger from "../js/events/navbar_event"
const images = require.context('../images',true)

document.addEventListener("DOMContentLoaded", function(){
    NavBarTrigger()
    let element = document.querySelector('#append-here')
    let parentNode = element.parentElement
    for (let i=0; i<10; i++) {
        let newB = document.createElement('button')
        newB.append(document.createTextNode(`product ${i}`))
        newB.setAttribute('class', 'btn btn-primary text-capitalize col-12 mb-1')
        newB.setAttribute('data-value', `product ${i}`)
        newB.setAttribute('data-trigger', 'notice')
        parentNode.insertBefore(newB, element)
    }
    document.querySelectorAll('[data-trigger="notice"]').forEach(function(element){
        let message = element.getAttribute('data-value')
        element.innerText = message
        element.addEventListener('click', function(event){
            event.preventDefault()
            alert(message)
        })
    })
})
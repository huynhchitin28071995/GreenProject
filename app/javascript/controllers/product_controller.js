import { Controller } from "stimulus"
import Splide from "@splidejs/splide"
// import { type } from "jquery"


export default class extends Controller {
  static targets = ['products']
    options ={

      main:{
        autoplay: true,
        type: 'loop',
        lazyLoad: 'nearby',
        cover:true,
      },
      primary:{
        type       : 'fade',
        heightRatio: 0.5,
        pagination : false,
        arrows     : false,
        cover      : true,
        type       : 'loop',
        autoplay: true,
        lazyLoad: 'nearby',
      },
      secondary:{
        autoplay: true,
        type: 'loop',
        lazyLoad: 'nearby',
        fixedWidth  : 100,
        height      : 100,
        gap         : 10,
        cover       : true,
        isNavigation: true,
        focus       : 'center',
        breakpoints : {
          '600': {
            fixedWidth: 66,
            height    : 40,
          }
        },
      }
      
    }


  connect(){
    // write your code here
    this.initSplide()
  }

  disconnect(){
    // write your code here
  }

  initSplide(){
    let id = this.productsTarget.getAttribute('id')
    let option = this.productsTarget.getAttribute('data-option')
    console.log(option)
    console.log(this.options[option])

    let splide = new Splide(`#${id}`,this.options[option])
    if(splide){
      splide.mount()
    }
  }
  reconnect() {
    this.initSplide()
  }
  initialize() {
    // write your code here
    document.addEventListener('cable-ready:after-morph', this.reconnect.bind(this))
  }
}


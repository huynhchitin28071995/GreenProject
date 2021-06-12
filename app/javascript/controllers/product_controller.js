import { Controller } from "stimulus"
import Splide from "@splidejs/splide"
// import { type } from "jquery"


export default class extends Controller {
  static targets = [ 'splide' ]
    options ={
    autoplay: true,
    type: 'loop',
    lazyLoad: 'nearby',
    cover:true,
  }

  connect() {
    // write your code here
    this.initSplide()
    console.log('DONE', this.element)

  }

  disconnect(){
    // write your code here
  }

  initSplide(){
    let id = this.splideTarget.getAttribute('id')
    let splide = new Splide(`#${id}`,this.options)
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


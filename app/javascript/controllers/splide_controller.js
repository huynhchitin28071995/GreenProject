import { Controller } from "stimulus"
import Splide from "@splidejs/splide"
import { type } from "jquery"


export default class extends Controller {
  static targets = [ 'splide' ]
    options ={
    autoplay: true,
    type: 'loop',
    lazyLoad: 'nearby'
  }

  connect() {
    // write your code here
    console.log('DONE')
    this.initSplide()
  }

  initialize(){
    // write your code here
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
}


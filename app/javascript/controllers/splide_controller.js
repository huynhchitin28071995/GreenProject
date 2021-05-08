import Splide from "@splidejs/splide"
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "splide" ]
  options = {
    autoplay: true,
    type: 'loop',
    lazyLoad: 'nearby',
    cover: true
  }

  connect() {
    // write you code
    this.initSplide()
  }

  initialize() {
    //   write something here
  }

  disconnect(){
      //   write something here
  }
  initSplide() {
    let id = this.splideTarget.getAttribute('id')
    console.log(id)
    let splide = new Splide(`#${id}`, this.options)
    if(splide) {
      splide.mount()
    }
  }

}
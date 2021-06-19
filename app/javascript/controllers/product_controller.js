import { Controller } from "stimulus"
import Splide from "@splidejs/splide"
// import { type } from "jquery"
export default class extends Controller {
  static targets = ['products','primary', 'secondary']
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
        lazyLoad: 'nearby',
        fixedWidth  : 150,
        height      : 150,
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
    // let primary = this.primaryTarget.getAttribute('id')
    console.log(this.primaryTargets)
    this.primaryTargets.forEach((item, index)=>{
      console.log(item, index)
      let primary=item.getAttribute('id')
      let secondary=this.secondaryTargets[index].getAttribute('id')
      console.log(primary, secondary)

      let splidePrimary = new Splide(`#${primary}`,this.options["primary"])
      let splideSecondary = new Splide(`#${secondary}`,this.options["secondary"])

      if(splidePrimary && splideSecondary){
      splideSecondary.mount()
      splidePrimary.sync(splideSecondary).mount()
    }
    })
    // let secondary = this.secondaryTarget.getAttribute('id')
    // let splidePrimary = new Splide(`#${primary}`,this.options["primary"])
    // let splideSecondary = new Splide(`#${secondary}`,this.options["secondary"])
    // if(splidePrimary && splideSecondary){
    //   splideSecondary.mount()
    //   splidePrimary.sync(splideSecondary).mount()
    // }
  }
  reconnect() {
    this.initSplide()
  }
  initialize() {
    // write your code here
    document.addEventListener('cable-ready:after-morph', this.reconnect.bind(this))
  }
}


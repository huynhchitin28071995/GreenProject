import {Controller} from "stimulus"
import Splide form '@splidejs/splide'

export default class extends Controller {
    static targets = ['splide']
    options = {
        autoplay: true,
        type: 'loop',
        lazyLoad: 'nearby',
        cover: true,
    }
    connect() {
        //write you code here
        this.initSplite()
    }

    initialize() {
    }

    disconnect() {
    }

    initSplite() {
        let id = this.splideTarget.getAttribute('id')
        let splide =  new Splite(`#${id}`, this.options )
        if(splide){
            splide.mount()
        }
    }
}
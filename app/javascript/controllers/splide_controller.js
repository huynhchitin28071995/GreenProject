import { Controller } from "stimulus"
import Splide from '@splidejs/splide'

export default class extends Controller {
    static targets = ['splide'];
    options = {
        autoplay: true,
        type: 'loop',
        lazyLoad: 'nearby',
        cover: true
    }

    connect() {
        // write your code here
        this.initSplide();
        console.log(`Connect to splide element`, this.element);
    }
    initialize() {
        // write your code here
    }
    disconnect() {
        // write your code here
    }
    initSplide() {
        let id = this.splideTarget.getAttribute('id')
        let splide = new Splide(`#${id}`, this.options);

        if (splide) {
            splide.mount();
        }

    }
}

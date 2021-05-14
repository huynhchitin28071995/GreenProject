import Splide from "@splidejs/splide";
import { Controller } from "@stimulus/core";

export default class extends Controller {
    static targets = ['products_splide']
    options = {
        type:'loop',
        perPage: '5',
        focus: 'center',
        lazyload: 'nearby',
    }
    connect() {
        this.initSplide();
        console.log(`init splide from products splide controller!`);
    }
    initSplide() {
        let id = this.products_splideTarget.getAttribute('id');
        let splide = new Splide(`#${id}`, this.options);
        if(splide) {
            splide.mount();
        }
    }
}
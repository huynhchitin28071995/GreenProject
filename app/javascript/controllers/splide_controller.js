import { Controller } from "stimulus"
import Splide from '@splidejs/splide'

export default class extends Controller {
    static targets = ['splide','productSplide'];
    options = {
        autoplay: true,
        type: 'loop',
        lazyLoad: 'nearby',
        cover: true
    }
    productsOption = {
        type:'loop',
        perPage: '5',
        focus: 'center',
        lazyload: 'nearby',
    }
    connect() {
        // write your code here
        this.initSplide();
        console.log(`Done stimuls is connected to splide element`, this.element);
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
        // ${this.productSplideTarget.getAttribute(`id`)}
        let splideProducts = new Splide(`#products-splide`, this.productsOption);
        if (splide) {
            splide.mount();
        }
        if(splideProducts) {
            splideProducts.mount();
            console.log(`mounted `, splideProducts);
        }
    }
}

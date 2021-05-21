import { Controller } from "stimulus"
import Splide from '@splidejs/splide'

export default class extends Controller {
    static targets = ['splide', 'product-plide'];
    options = {
        autoplay: true,
        type: 'loop',
        lazyLoad: 'nearby',
        cover: true
    }
    productsOption = {
        type: 'loop',
        perPage: '1',
        focus: 'center',
        lazyload: 'nearby',
        visible: true,
    }
    connect() {
        // write your code here
        this.initSplide();
        console.log(`Done stimulus is connected to splide element`, this.element);
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
        // let splideProducts = new Splide(`${this.productSplideTarget.getAttribute(`id`)}`, this.productsOption);
        let splideProducts = new Splide(`#products-splide`, this.options);
        if (splide) {
            splide.mount();
        }
        if (splideProducts) {
            splideProducts.mount();
            console.log(`mounted `, splideProducts);
        }
    }
}

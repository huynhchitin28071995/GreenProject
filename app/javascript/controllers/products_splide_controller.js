import Splide from "@splidejs/splide";
import { Controller } from "@stimulus/core";

export default class extends Controller {
    static targets = ['productSplide'];
    options = {
        type:'loop',
        perPage: '5',
        focus: 'center',
        lazyload: 'nearby',
    };
    connect() {
        this.initSplide();
        console.log(`init splide from products splide controller!`);
    }
    initSplide() {
        let id = this.productSplideTarget.getAttribute('id');
        let splideProducts = new Splide(`#products-splide`, this.options);
         // ${this.productSplideTarget.getAttribute(`id`)}
        console.log(id);
        if(splideProducts) {
            splideProducts.mount();
            console.log(`mounted `, splideProducts);
        }
    }
    
}
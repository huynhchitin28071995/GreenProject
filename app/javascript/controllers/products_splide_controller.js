import Splide from "@splidejs/splide";
import { Controller } from "@stimulus/core";

export default class extends Controller {
    static targets = ['splide'];
    options = {
        type: 'loop',
        perPage: '5',
        focus: 'center',
        visible: true,
    };
    connect() {
        this.initSplide();
        console.log(`connect splide from products splide controller!`);
    }
    initSplide() {
        console.log(`init splide from products splide controller!`);
        let id = this.splideTarget.getAttribute('id');
        let splideProducts = new Splide(`#${id}`, this.options);
        console.log(id);
        if (splideProducts) {
            splideProducts.mount();
        }
    }

}
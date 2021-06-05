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
        console.log(`connect splide from related product splide!`);
    }
    initSplide() {
        console.log(`init splide from related product splide!`);
        let id = this.splideTarget.getAttribute('id');
        let relateProducts = new Splide(`#${id}`, this.options);
        console.log(id);
        if (relateProducts) {
            relateProducts.mount();
        }
    }
    reconnect() {
        this.initSplide()
    }
    initialize() {
        // write your code here
        document.addEventListener('cable-ready:after-morph', this.reconnect.bind(this))
    }
}
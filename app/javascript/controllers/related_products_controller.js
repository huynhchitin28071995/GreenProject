import Splide from "@splidejs/splide";
import { Controller } from "@stimulus/core";


export default class extends Controller {
    static targets = ['splide'];
    options = {
        type: 'loop',
        perPage: '3',
        focus: 'center',
        visible: true,
        arrows: true,
        pagination: {
            size: '1em',
        }
    };
    connect() {
        this.initSplide();
    }
    initSplide() {
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
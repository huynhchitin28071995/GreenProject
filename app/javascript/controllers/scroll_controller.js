import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["navbar"];

  connect() {
    // write your code here
    this.init();
    console.log(`Connect to splide element`, this.element);
  }
  initialize() {
    // write your code here
    document.addEventListener(
      "cable-ready:after-morph",
      this.reconnect.bind(this)
    );
  }
  disconnect() {
    // write your code here
  }
  init() {
    let self = this;
    self.navbarWillFixed(window.scrollY);
    window.addEventListener("scroll", function () {
      self.navbarWillFixed(window.scrollY);
    });
  }

  showNavbar() {
    let scrollY = window.scrollY;
    this.navbarWillFixed(scrollY);
  }

  navbarWillFixed(scrollY) {
    let id = this.navbarTarget.getAttribute("id");
    let classes = document.querySelector(`#${id}`).classList;
    console.log(scrollY);
    if (scrollY >= 120) {
      classes.add("fixed-navbar");
    } else {
      classes.remove("fixed-navbar");
    }
  }
  reconnect() {
    this.init();
  }
}

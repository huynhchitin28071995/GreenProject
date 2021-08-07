import ApplicationController from "./application_controller";

export default class extends ApplicationController {
  static targets = ["cart"];
  connect() {
    super.connect();
  }
  opencart(event) {
    event.preventDefault();

    let screen = document.querySelector(".screen-darken").classList;
    let id = this.cartTarget.getAttribute("id");
    let classes = document.querySelector("section[name='inventory']").classList;
    if (classes.contains("show")) {
      classes.remove("show");
      screen.remove("active");
    } else {
      classes.add("show");
      screen.add("active");
    }
  }
  closecart(event) {
    event.preventDefault();
    let id = this.cartTarget.getAttribute("id");
    let screen = document.querySelector(".screen-darken").classList;
    let classes = document.querySelector("section[name='inventory']").classList;
    classes.remove("show");
    screen.remove("active");
  }
  on_keypress(event) {}
  remove_product(event) {
    let id = event.currentTarget.getAttribute("data-id");
    this.stimulate("CartReflex#destroy_item", id);
  }

  addItem(event) {
    let id = event.currentTarget.getAttribute("data-id");
    this.stimulate("CartReflex#add_item", id);
  }
  remItem(event) {
    let id = event.currentTarget.getAttribute("data-id");
    this.stimulate("CartReflex#rem_item", id);
  }
}

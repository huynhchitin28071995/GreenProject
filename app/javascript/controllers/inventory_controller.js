import ApplicationController from "./application_controller";

export default class extends ApplicationController {
  static targets = ["cart"];
  connect() {}
  opencart(event) {
    event.preventDefault();
    let id = this.cartTarget.getAttribute("id");
    let classes = document.querySelector(`#${id}`).classList;
    if (classes.contains("show")) {
      classes.remove("show");
    } else {
      classes.add("show");
    }
  }
  closecart(event) {
    event.preventDefault();
    let id = this.cartTarget.getAttribute("id");
    let classes = document.querySelector(`#${id}`).classList;
    classes.remove("show");
  }
}

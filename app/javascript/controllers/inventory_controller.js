import ApplicationController from "./application_controller";

export default class extends ApplicationController {
  static targets = ["cart"];
  connect() {
    console.log("inventory");
  }
  opencart(event) {
    event.preventDefault();
    let id = this.cartTarget.getAttribute("id");
    let classes = document.querySelector(`#${id}`).classList;
    if (classes.contains("show")) {
      console.log(1);
      classes.remove("show");
    } else {
      console.log(2);
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

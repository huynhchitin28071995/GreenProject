import ApplicationController from "./application_controller";

export default class extends ApplicationController {
  static targets = ["last_step"];
  connect() {
    super.connect();
  }
  open(event) {
    console.log("hehe");
    event.preventDefault();
    let id = this.cartTarget.getAttribute("id");
    let screen = document.querySelector(".screen-darken").classList;
    let classes = document.querySelector("section[name='last_step']").classList;
    if (classes.contains("show")) {
      classes.remove("show");
      screen.remove("active");
    } else {
      classes.add("show");
      screen.add("active");
    }
  }
  close(event) {
    event.preventDefault();
    let id = this.cartTarget.getAttribute("id");
    let screen = document.querySelector(".screen-darken").classList;
    let classes = document.querySelector("section[name='last_step']").classList;
    classes.remove("show");
    screen.remove("active");
  }
  on_keypress(event) {}
}

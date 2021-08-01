import ApplicationController from "./application_controller";

export default class extends ApplicationController {
  connect() {}

  closescreen(event) {
    event.preventDefault();
    let screen = document.querySelector(".screen-darken").classList;
    let classes = document.querySelector("section[name='inventory']").classList;
    classes.remove("show");
    screen.remove("active");
  }
}

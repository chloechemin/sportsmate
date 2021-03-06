// app/javascript/controllers/typed_js_controller.js
import { Controller } from "@hotwired/stimulus"
// Don't forget to import the NPM package
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["BASKETBALL", "FOOTBALL", "GOLF", "NETBALL", "TENNIS", "CRICKET", "BADMINTON", "BASEBALL", "HOCKEY", "SOCCER", "RUGBY", "VOLLEYBALL", "DARTS"],
      typeSpeed: 80,
      loop: true
    });
  }
}

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="notice"
export default class extends Controller {
  static targets = ["closeNoticeButton"]

  connect() {
  }

  close() {
    this.closeNoticeButtonTarget.remove();
    const blackout = document.getElementById("blackout");
    blackout.remove();
  }
}

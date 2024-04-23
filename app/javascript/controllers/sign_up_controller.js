import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button", "textContainer"]

  connect() {
    this.buttonTarget.addEventListener("click", this.handleButtonClick.bind(this))
    this.textContainerTarget.addEventListener("click", this.handleTextContainerClick.bind(this))
  }

  handleButtonClick() {
    // Please sync "Mine Page" to the project
  }

  handleTextContainerClick() {
    window.location.href = "/users/sign_in"
  }
}
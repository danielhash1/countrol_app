import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button", "textContainer"]

  connect() {
    this.buttonTarget.addEventListener('click', this.signUp.bind(this))
    this.textContainerTarget.addEventListener('click', this.navigateToSignIn.bind(this))
  }

  signUp() {
    // Handle the "Sign Up" button click event
    console.log("Sign Up button clicked")
    // Add your desired behavior here
  }

  navigateToSignIn() {
    // Handle the "Already have an account? Sign In" text click event
    console.log("Sign In text clicked")
    window.location.href = "/users/sign_in"
    // Add your desired behavior here
  }
}
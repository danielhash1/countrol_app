import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  navigateToMine() {
    // Handle the "Sign In" button click here
    console.log("Sign In button clicked")
  }

  navigateToSignUp() {
    // Handle the "Don't have an account? Sign Up" text click here
    console.log("Sign Up text clicked")
  }
}
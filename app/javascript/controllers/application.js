// import { Application } from "@hotwired/stimulus";
// const application = Application.start()

// // Configure Stimulus development experience
// import { definitionsFromContext } from "@hotwired/stimulus/webpack-helpers";
// window.Stimulus = Application.start()
// const context = require.context("../controllers", true, /\.js$/)
// window.Stimulus.load(definitionsFromContext(context))


import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

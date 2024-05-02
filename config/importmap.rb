# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@popperjs/core", to: "popper.js", preload: true
pin "bootstrap", to: "bootstrap.min.js", preload: true

pin "chartkick", to: "chartkick.js"
pin "Chart.bundle", to: "Chart.bundle.js"
# pin "animatejs" # @1.0.1
# pin "animate.css" # Corrected
# pin "amdefine" # @1.0.1
# pin "autoprefixer-core" # @3.1.2
# pin "buffer" # @2.0.1
# pin "caniuse-db/data", to: "caniuse-db--data.js" # @1.0.30001614
# pin "caniuse-db/features-json/background-img-opts", to: "caniuse-db--features-json--background-img-opts.js" # @1.0.30001614
# pin "caniuse-db/features-json/border-image", to: "caniuse-db--features-json--border-image.js" # @1.0.30001614
# pin "caniuse-db/features-json/border-radius", to: "caniuse-db--features-json--border-radius.js" # @1.0.30001614
# pin "caniuse-db/features-json/calc", to: "caniuse-db--features-json--calc.js" # @1.0.30001614
# pin "caniuse-db/features-json/css-animation", to: "caniuse-db--features-json--css-animation.js" # @1.0.30001614
# pin "caniuse-db/features-json/css-boxshadow", to: "caniuse-db--features-json--css-boxshadow.js" # @1.0.30001614
# pin "caniuse-db/features-json/css-filters", to: "caniuse-db--features-json--css-filters.js" # @1.0.30001614
# pin "caniuse-db/features-json/css-gradients", to: "caniuse-db--features-json--css-gradients.js" # @1.0.30001614
# pin "caniuse-db/features-json/css-hyphens", to: "caniuse-db--features-json--css-hyphens.js" # @1.0.30001614
# pin "caniuse-db/features-json/css-masks", to: "caniuse-db--features-json--css-masks.js" # @1.0.30001614
# pin "caniuse-db/features-json/css-placeholder", to: "caniuse-db--features-json--css-placeholder.js" # @1.0.30001614
# pin "caniuse-db/features-json/css-selection", to: "caniuse-db--features-json--css-selection.js" # @1.0.30001614
# pin "caniuse-db/features-json/css-sticky", to: "caniuse-db--features-json--css-sticky.js" # @1.0.30001614
# pin "caniuse-db/features-json/css-transitions", to: "caniuse-db--features-json--css-transitions.js" # @1.0.30001614
# pin "caniuse-db/features-json/css3-boxsizing", to: "caniuse-db--features-json--css3-boxsizing.js" # @1.0.30001614
# pin "caniuse-db/features-json/css3-cursors-newer", to: "caniuse-db--features-json--css3-cursors-newer.js" # @1.0.30001614
# pin "caniuse-db/features-json/css3-tabsize", to: "caniuse-db--features-json--css3-tabsize.js" # @1.0.30001614
# pin "caniuse-db/features-json/flexbox", to: "caniuse-db--features-json--flexbox.js" # @1.0.30001614
# pin "caniuse-db/features-json/font-feature", to: "caniuse-db--features-json--font-feature.js" # @1.0.30001614
# pin "caniuse-db/features-json/fullscreen", to: "caniuse-db--features-json--fullscreen.js" # @1.0.30001614
# pin "caniuse-db/features-json/intrinsic-width", to: "caniuse-db--features-json--intrinsic-width.js" # @1.0.30001614
# pin "caniuse-db/features-json/multicolumn", to: "caniuse-db--features-json--multicolumn.js" # @1.0.30001614
# pin "caniuse-db/features-json/pointer", to: "caniuse-db--features-json--pointer.js" # @1.0.30001614
# pin "caniuse-db/features-json/text-decoration", to: "caniuse-db--features-json--text-decoration.js" # @1.0.30001614

# Stimulus & Turbo
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin "@hotwired/turbo-rails", to: "turbo.min.js"

pin_all_from Pupu::Engine.root.join("app/javascript/pupu/controllers"), under: "pupu/controllers"
pin_all_from Pupu::Engine.root.join("app/components")
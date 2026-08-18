# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bulma-toast" # @2.4.4
pin "trix"
pin "@rails/actiontext", to: "actiontext.esm.js"
pin "dropzone" # @6.0.0
pin "just-extend" # @5.1.1
pin "raty-js" # @4.3.0
pin "jquery", to: "https://ga.jspm.io/npm:jquery@3.7.1/dist/jquery.js"
pin "@rails/actioncable", to: "actioncable.esm.js"
pin_all_from "app/javascript/channels", under: "channels"
# pin "channels/consumer", to: "channels/consumer.js"
# pin "channels/message_channel", to: "channels/message_channel.js"
pin "@fullcalendar/core", to: "@fullcalendar--core.js" # @6.1.21
pin "@fullcalendar/daygrid", to: "@fullcalendar--daygrid.js" # @6.1.21
pin "@fullcalendar/list", to: "@fullcalendar--list.js" # @6.1.21
pin "fullcalendar", to: "https://cdn.jsdelivr.net/npm/fullcalendar@6.1.11/index.global.min.js"

import "@hotwired/turbo-rails"
import "controllers"

import $ from "jquery"
import Raty from "raty-js"

import "trix"
import "@rails/actiontext"


// =========================
// jQuery / Raty
// =========================

window.$ = $
window.jQuery = $
window.Raty = Raty


// =========================
// Application
// =========================

console.log("🔥 APPLICATION LOADED")


// =========================
// Flash messages
// =========================

document.addEventListener("turbo:load", () => {
  document.querySelectorAll(".flash-message").forEach((flash) => {
    const button = flash.querySelector(".delete")

    if (button) {
      button.addEventListener("click", () => {
        flash.remove()
      })
    }

    setTimeout(() => {
      flash.style.opacity = "0"

      setTimeout(() => {
        flash.remove()
      }, 300)
    }, 2000)
  })
})


// =========================
// Contact modal
// =========================

document.addEventListener("turbo:load", () => {
  const modal = document.getElementById("contact-form")

  if (!modal) return

  const toggleButtons = document.querySelectorAll(".toggle-contact")

  toggleButtons.forEach((button) => {
    button.addEventListener("click", (event) => {
      event.preventDefault()
      modal.classList.toggle("is-active")
    })
  })
})
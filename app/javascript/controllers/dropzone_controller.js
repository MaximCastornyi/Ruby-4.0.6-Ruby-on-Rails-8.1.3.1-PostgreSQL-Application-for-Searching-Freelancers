import { Controller } from "@hotwired/stimulus"
import Dropzone from "dropzone"

export default class extends Controller {
  static values = { url: String }

  connect() {
    Dropzone.autoDiscover = false

    this.dropzone = new Dropzone(this.element, {
      url: this.urlValue,
      paramName: "gig[photos]",
      maxFilesize: 5,
      acceptedFiles: "image/*",
      headers: {
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
      }
    })

    this.dropzone.on("success", (file, response) => {
      // Добавляем новое фото в галерею
      const gallery = document.getElementById("uploaded-photos")
      if (gallery && response.html) {
        gallery.insertAdjacentHTML("beforeend", response.html)
      }
      this.dropzone.removeFile(file)
    })
  }

  disconnect() {
    this.dropzone.destroy()
  }
}
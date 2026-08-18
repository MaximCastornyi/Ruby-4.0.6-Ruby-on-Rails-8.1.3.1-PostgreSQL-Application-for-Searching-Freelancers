import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["container"]

  prev() {
    const width = this.containerTarget.clientWidth
    this.containerTarget.scrollBy({ left: -width, behavior: "smooth" })
  }

  next() {
    const width = this.containerTarget.clientWidth
    this.containerTarget.scrollBy({ left: width, behavior: "smooth" })
  }
}
import { Controller } from "@hotwired/stimulus"
import "fullcalendar"

export default class extends Controller {
  connect() {
    // Ждем инициализации глобального объекта FullCalendar
    if (typeof FullCalendar === "undefined") {
      setTimeout(() => this.initCalendar(), 100)
    } else {
      this.initCalendar()
    }
  }

  initCalendar() {
    if (this.calendar) return

    this.calendar = new FullCalendar.Calendar(this.element, {
      initialView: 'dayGridMonth',
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,dayGridWeek'
      },
      height: 'auto',
      events: [
        { title: 'Test Event', start: new Date() }
      ]
    })

    this.calendar.render()
  }

  disconnect() {
    if (this.calendar) {
      this.calendar.destroy()
      this.calendar = null
    }
  }
}
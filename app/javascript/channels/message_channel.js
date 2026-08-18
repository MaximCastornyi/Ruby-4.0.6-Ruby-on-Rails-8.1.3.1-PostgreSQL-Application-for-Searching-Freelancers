import { Controller } from "@hotwired/stimulus"
import consumer from "channels/consumer"

export default class extends Controller {
  static values = {
    conversation: Number
  }

  connect() {
    // console.log("🔥 MESSAGE CONTROLLER CONNECTED")
    // console.log("🔥 CONVERSATION:", this.conversationValue)

    this.subscription = consumer.subscriptions.create(
      {
        channel: "MessageChannel",
        conversation: this.conversationValue
      },
      {
        connected: () => {
          console.log(
            // "🟢 ACTION CABLE CONNECTED:",
            this.conversationValue
          )
        },

        disconnected: () => {
          // console.log("🔴 ACTION CABLE DISCONNECTED")
        },

        rejected: () => {
          // console.log("❌ ACTION CABLE REJECTED")
        },

        received: (data) => {
          // console.log("📨 RECEIVED:", data)
        }
      }
    )
  }

  disconnect() {
    if (this.subscription) {
      console.log(
        "🔌 UNSUBSCRIBING FROM CONVERSATION:",
        this.conversationValue
      )

      this.subscription.unsubscribe()
      this.subscription = null
    }
  }
}
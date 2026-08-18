import { Controller } from "@hotwired/stimulus"
import consumer from "channels/consumer"

export default class extends Controller {
  static values = {
    conversation: Number,
    currentUserId: Number
  }

  connect() {
    // console.log("🔥 MESSAGE CONTROLLER CONNECTED")
    // console.log("🔥 CONVERSATION:", this.conversationValue)
    // console.log("🔥 CURRENT USER:", this.currentUserIdValue)

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

          const messageList = document.getElementById("message_list")

          if (!messageList) {
            // console.error("❌ #message_list NOT FOUND")
            return
          }

          const html =
            Number(data.sender_id) === Number(this.currentUserIdValue)
              ? data.sender
              : data.receiver

          if (!html) {
            // console.error("❌ MESSAGE HTML NOT FOUND", data)
            return
          }

          messageList.insertAdjacentHTML("beforeend", html)

          // console.log("✅ MESSAGE INSERTED")

          messageList.lastElementChild?.scrollIntoView({
            behavior: "smooth",
            block: "nearest"
          })
        }
      }
    )
  }

  disconnect() {
    if (this.subscription) {
      this.subscription.unsubscribe()
    }
  }
}
class MessageChannel < ApplicationCable::Channel
  def subscribed
    conversation_id = params[:conversation]

    #Rails.logger.info "🔥🔥🔥 MESSAGE CHANNEL SUBSCRIBED: #{conversation_id}"

    stream_from "conversation_#{conversation_id}"
  end

  def unsubscribed
    #Rails.logger.info "🔴 MESSAGE CHANNEL UNSUBSCRIBED"
  end
end
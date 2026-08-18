# app/controllers/messages_controller.rb
class MessagesController < ApplicationController
  def create
    if current_user.id == message_params[:receiver_id].to_i
      return redirect_to request.referrer, alert: "You cannot send message to yourself"
    end

    conversation = Conversation.where(
      "(sender_id = ? AND receiver_id = ?) OR (sender_id = ? AND receiver_id = ?)",
      current_user.id, message_params[:receiver_id],
      message_params[:receiver_id], current_user.id
    ).first_or_create!(
      sender_id: current_user.id,
      receiver_id: message_params[:receiver_id]
    )

    @message = conversation.messages.build(
      user_id: current_user.id,
      content: message_params[:content]
    )

    if @message.save
      conversation.touch # Обновляем updated_at
      respond_to do |format|
        format.turbo_stream { head :ok }
        format.html { redirect_to request.referrer }
      end
    else
      redirect_to request.referrer, alert: "Cannot send the message"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :receiver_id)
  end
end
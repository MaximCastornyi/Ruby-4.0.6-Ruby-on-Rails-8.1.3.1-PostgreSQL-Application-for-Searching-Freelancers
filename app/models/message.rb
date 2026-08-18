# app/models/message.rb
class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

  after_create_commit :broadcast_message

  private

  def broadcast_message
    # 1. Добавление сообщения в чат для отправителя
    broadcast_append_to(
      "conversation_#{conversation_id}_user_#{user_id}",
      target: "message_list",
      partial: "conversations/message",
      locals: { m: self, user: user }
    )

    # 2. Обновление превью слева для отправителя
    broadcast_replace_to(
      "conversation_#{conversation_id}_user_#{user_id}",
      target: "preview_conversation_#{conversation_id}",
      partial: "conversations/preview",
      locals: { conversation: conversation, user: user }
    )

    # Находим получателя
    receiver_id = (conversation.sender_id == user_id) ? conversation.receiver_id : conversation.sender_id
    receiver = User.find_by(id: receiver_id)
    return unless receiver

    # 3. Добавление сообщения в чат для получателя
    broadcast_append_to(
      "conversation_#{conversation_id}_user_#{receiver_id}",
      target: "message_list",
      partial: "conversations/message",
      locals: { m: self, user: receiver }
    )

    # 4. Обновление превью слева для получателя
    broadcast_replace_to(
      "conversation_#{conversation_id}_user_#{receiver_id}",
      target: "preview_conversation_#{conversation_id}",
      partial: "conversations/preview",
      locals: { conversation: conversation, user: receiver }
    )
  end
end
class Conversation < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
  has_many :messages, dependent: :destroy

  def last_message
    message = Message.where(conversation_id: self.id).last
    if message.present?
      message
    else
      Message.new(updated_at: Time.now)
    end
  end
end

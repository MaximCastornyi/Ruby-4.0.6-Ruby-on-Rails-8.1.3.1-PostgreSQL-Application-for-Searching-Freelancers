class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :order
  has_one_attached :attachment_file

  after_create_commit :broadcast_comment

  private

  def broadcast_comment
    broadcast_append_to(
      order,
      target: "comment-list",
      partial: "orders/comment",
      locals: { comment: self }
    )
  end
end
class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order

  def create
    return head :unprocessable_entity if comment_params[:content].blank?

    @comment = Comment.new(
      user: current_user,
      order: @order,
      content: comment_params[:content],
      attachment_file: comment_params[:attachment_file]
    )

    if @comment.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to order_detail_path(@order) }
      end
    else
      head :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :order_id, :attachment_file)
  end

  def set_order
    @order = Order.find_by(id: comment_params[:order_id])
    redirect_to dashboard_path, alert: "Invalid order" unless @order
  end
end
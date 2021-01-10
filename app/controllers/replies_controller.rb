class RepliesController < ApplicationController

  def create
    @now = Now.find(params[:now_id])
    @reply = current_user.replies.new(reply_params)
    @reply.now_id = @now.id
    @reply.save
    redirect_to request.referer
  end

  def destroy
  end

  def show
    @now = Now.find(params[:id])
    @reply_new = Reply.new
  end

  def reply_params
    params.require(:reply).permit(:reply)
  end

end

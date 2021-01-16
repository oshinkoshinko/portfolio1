class ChatsController < ApplicationController

  def show
    @chat_new = Chat.new
    @chats = Chat.all

  end

  def create
    @chat = Chat.new(chat_params)
    @chat.user_id = current_user.id
    @chat.save
    redirect_to request.referer
  end

  def destroy
  end

  def chat_params
    params.require(:chat).permit(:message, :room_id)
  end

end

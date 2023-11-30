class MessagesController < ApplicationController

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        {
          message: render_to_string(partial: "message", locals: {message: @message}),
          sender_id: @message.user.id
        })
        if request.referer != chatroom_url(@chatroom)
          redirect_to chatroom_path(@chatroom) and return
        end
      head :ok
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  def index
    @chatrooms = Chatroom.all
    @messages = Message.all
  end

  private

  def message_params
    params.require(:message).permit(:content, :article_id, :response, :response_author)
  end
end

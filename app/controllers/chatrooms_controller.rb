class ChatroomsController < ApplicationController

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @message
    authorize @chatroom
  end

  def create
    @receiver = User.find(params[:user_id])
    @sender = current_user
    first_case = Chatroom.find_by(sender_id: @sender.id, receiver_id: @receiver.id)
    second_case = Chatroom.find_by(sender_id: @receiver.id, receiver_id: @sender.id)
    if first_case || second_case
      if first_case
        authorize first_case
        redirect_to first_case
      else
        authorize second_case
        redirect_to second_case
      end
    else
      @chatroom = Chatroom.new
      authorize @chatroom
      @chatroom.sender = @sender
      @chatroom.receiver = @receiver
      @chatroom.save
      redirect_to chatroom_path(@chatroom)
    end
  end
end

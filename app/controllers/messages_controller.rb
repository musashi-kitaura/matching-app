class MessagesController < ApplicationController
  def index 
    @users = current_user.matchers
  end

  def show
    @users = User.all  
    @user = User.find(params[:id])
    @message = Message.new
  end  

  def create
    @message = current_user.messages.new(message_params)
    if @message.save
      redirect_to root_path
    end
  end

  def destroy
    @message = Message.find(params[:item_id])
    if @message.destroy
      redirect_to root_path
    else  
      redirect_to root_path
    end
  end  
  private
  def message_params
    params.require(:message).permit(:message).merge(user_id: current_user.id)
  end
end

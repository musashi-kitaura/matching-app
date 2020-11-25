class MessagesController < ApplicationController
  def index 
    @users = current_user.matchers
  end

  def show
    @users = current_user.matchers 
    @user = User.find(params[:id])
    @message = Message.new
  end  

  def create
    if Entry.where(:user_id => current_user.id, :room_id => params[:message][:room_id]).present?
      @message = Message.create(params.require(:message).permit(:user_id, :content, :room_id).merge(:user_id => current_user.id))
      redirect_to "/rooms/#{@message.room_id}"
    else
      redirect_back(fallback_location: root_path)
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

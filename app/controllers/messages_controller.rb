class MessagesController < ApplicationController
  def index 
    @users = current_user.matchers
  end

  def create
    if Entry.where(:user_id => current_user.id, :room_id => params[:message][:room_id]).present?
      @message = Message.create(params.require(:message).permit(:user_id, :content, :room_id).merge(:user_id => current_user.id))
      respond_to do |format|
        format.html{ redirect_to "/rooms/#{@message.room_id}" }
        format.json
      end 
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
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end
end

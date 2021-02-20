class RoomsController < ApplicationController
  def create 
    entries = Entry.where(user_id:current_user.id).map(&:room)
    room = Entry.where(room:entries,user_id:params[:user_id]).map(&:room).first
    if room.blank?
      room = Room.create
      Entry.create(room:room,user_id:current_user.id)
      Entry.create(room:room,user_id:params[:user_id])
    end 
    redirect_to action: :show, id: room.id
  end  

  def show  
    @room = Room.find_by(id: params[:id])
    @room_user = @room.entries.where.not(user_id: current_user.id).first.user
    @messages = Message.where(room: @room).order(:created_at)
    @message = Message.new
    
  end
end

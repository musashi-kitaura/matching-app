class RoomsController < ApplicationController
  def index
    @users = current_user.matchers
    @users.each do |e|
      @user = e
    end  
    # マッチングしたユーザー情報を取得
    @currentUserEntry=Entry.where(user_id: current_user.id)
    # エントリーさせたユーザー情報のidを取得。新規登録されたもの
    @userEntry=Entry.where(user_id: @user.id)
    # 新規登録されたマッチングされたユーザーの情報を取得する
    if @user.id == current_user.id
    else
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id then
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end 
    end
  end   
  def show  
    @users = current_user.matchers
    @room = Room.find(params[:id]) 
    if Entry.where(:user_id => current_user.id, :room_id => @room.id).present?
      @messages = @room.messages
      @message = Message.new
      @entries = @room.entries
    else
      redirect_back(fallback_location: root_path)
    end
  end  
  def create 
    @room = Room.create
    @joinCurrentUser = Entry.create(user_id: current_user.id, room_id: @room.id)
    @joinUser = Entry.create(join_room_params)
    redirect_to room_path(@room.id)
  end
  private
  def join_room_params
    params.require(:entry).permit(:user_id, :room_id).merge(room_id: @room.id)
  end
end

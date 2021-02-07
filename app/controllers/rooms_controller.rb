class RoomsController < ApplicationController
  # def index
  #   @users = current_user.matchers
  #   @users.each do |e|
  #     @user = e
  #   end  
  #   # マッチングしたユーザー情報を取得
  #   @currentUserEntry=Entry.where(user_id: current_user.id)
  #   # エントリーさせたユーザー情報のidを取得。新規登録されたもの
  #   @userEntry=Entry.where(user_id: @user.id)
  #   # 新規登録されたマッチングされたユーザーの情報を取得する
  #   if @user.id == current_user.id
  #   else
  #     @currentUserEntry.each do |cu|
  #       @userEntry.each do |u|
  #         if cu.room_id == u.room_id then
  #           @isRoom = true
  #           @roomId = cu.room_id
  #         end
  #       end
  #     end
  #     if @isRoom
  #     else
  #       @room = Room.new
  #       @entry = Entry.new
  #     end 
  #   end
  # end 
  
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
    # @room = Room.find(params[:id]) 
    # if Entry.where(:user_id => current_user.id, :room_id => @room.id).present?
    #   @messages = @room.messages
    #   @message = Message.new
    #   @entries = @room.entries
    # else
    #   redirect_back(fallback_location: root_path)
    # end
    @room = Room.find_by(id: params[:id])
    @room_user = @room.entries.where.not(user_id: current_user.id).first.user
    @messages = Message.where(room: @room).order(:created_at)
    @message = Message.new
  end
end

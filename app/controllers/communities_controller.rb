class CommunitiesController < ApplicationController
  def index
    @communties= Community.all
    @categories= Category.all
  end  
  
  def show
    @community = Community.find(params[:id]) 
    @community_create = CommunityUser.new
  end

  def create
    community = CommunityUser.create(params.permit(:community_id,:user_id, ).merge(:user_id => current_user.id))
     redirect_to "/Communities/#{community.room_id}"
  end
end

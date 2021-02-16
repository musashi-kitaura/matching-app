class CommunityUsersController < ApplicationController
  def create
    community = CommunityUser.create(params.require(:community_user).permit(:community_id,:user_id, ).merge(:user_id => current_user.id))
    
    redirect_to root_path
  end  
end

class CommunitiesController < ApplicationController
  def index
    @communties= Community.all
    @categories= Category.all
  end  
  
  def show
    @community = Community.find(params[:id]) 
    community =@community
    @community_user = CommunityUser.new
    @community_users = community.users
  end

  def create
  end
end

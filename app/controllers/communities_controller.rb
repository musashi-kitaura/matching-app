class CommunitiesController < ApplicationController
  def index
    @communties= Community.all
    @categories= Category.all
  end  
  
  def show
    @community = Community.find(params[:id]) 
    @community_user = CommunityUser.new
    @community_users=CommunityUser.all
  end

  def create
  end
end

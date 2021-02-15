class CommunitiesController < ApplicationController
  def index
    @communties= Community.all
  end  
  
  def show
    @communty = Community.find(params[:id]) 
  end
end

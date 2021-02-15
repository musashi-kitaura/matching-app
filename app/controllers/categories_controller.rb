class CategoriesController < ApplicationController
  def index
    @users = current_user.matchers
  end
  def show  
    @category = Category.find(params[:id]) 
    @community_all = @category.communities
  end  
end

class CategorysController < ApplicationController
  def index
    @users = current_user.matchers
  end

  def favorite
  
  end  

end

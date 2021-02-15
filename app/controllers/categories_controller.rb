class CategoriesController < ApplicationController
  def index
    @users = current_user.matchers
  end

end

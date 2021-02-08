class UsersController < ApplicationController
  def index
    @users = User.all  
  end  

  def edit
    @user = User.find(params[:id])    
    @image = @user.image  
  end
  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end  

  def show
    @user = User.find(params[:id])
    @relationship = Relationship.new
  end
 
  private

  def user_params
    params.require(:user).permit(:id, :nickname, :email, :image, :profile)
  end   

end
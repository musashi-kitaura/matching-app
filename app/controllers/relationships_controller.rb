class RelationshipsController < ApplicationController
  def index
    @users = current_user.matchers
  end  
  def create
    reaction = Relationship.find_or_initialize_by(follower_id:params[:user_id], following_id: current_user.id)
    reaction.update_attributes(
      status: params[:reaction]
    )
  end
  
  def destroy
    @user=current_user.id 
    @relationship =  Relationship.where(following_id: params[:id],follower_id:current_user.id )
    @relationship.destroy_all
    redirect_to root_path
  end

  private

  def create_params
    params.permit(:following_id)
  end
end

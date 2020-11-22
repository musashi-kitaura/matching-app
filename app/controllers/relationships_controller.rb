class RelationshipsController < ApplicationController
  def create
    current_user.following_relationships.create(create_params)
    redirect_to root_path
  end

  def destroy
    @user=current_user.id 
    @relationship =  Relationship.where(following_id: params[:id],follower_id:@user.id)
    @relationship.destroy_all
    redirect_to root_path
  end

  private

  def create_params
    params.permit(:following_id)
  end
end

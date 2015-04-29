class FriendshipsController < ApplicationController
def create
  @user = User.find_by_id(session[:userid])
  @friendship = @user.friendships.build(:friend_id => params[:friend_id])
  if @friendship.save
    flash[:notice] = "Added friend."
    redirect_to root_url
  else
    flash[:notice] = "Unable to add friend."
    redirect_to root_url
  end
end

def destroy
  @user = User.find_by_id(session[:userid])
  @friendship = @user.friendships.find(params[:id])
  @friendship.destroy
  flash[:notice] = "Removed friendship."
  redirect_to user
end
end

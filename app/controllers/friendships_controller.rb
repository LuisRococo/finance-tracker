class FriendshipsController < ApplicationController
  def create
  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id]).first
    friend = friendship.friend
    friendship.destroy
    
    flash[:notice] = "#{friend.first_name} has been deleted from your contacts"
    redirect_to my_friends_path
  end
end

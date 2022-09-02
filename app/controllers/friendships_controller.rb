class FriendshipsController < ApplicationController
  def create
    current_user.friendships.build(friend_id: params[:friend])
    if current_user.save
      flash[:notice] = "Following user"
    else
      flash[:alert] = "There was something wrong"
    end
    redirect_to my_friends_path
  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id]).first
    friend = friendship.friend
    friendship.destroy
    
    flash[:notice] = "#{friend.first_name} has been deleted from your contacts"
    redirect_to my_friends_path
  end
end

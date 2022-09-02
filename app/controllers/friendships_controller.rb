class FriendshipsController < ApplicationController
  def destroy
    friendship = Friendship.where(user: current_user.id, friend: params[:id]).first
    friend = friendship.friend
    friendship.destroy
    
    flash[:notice] = "#{friend.first_name} has been deleted from your contacts"
    redirect_to my_friends_path
  end
end

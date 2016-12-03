class FollowersController < ApplicationController
  before_action :set_followee

	def create
    Follower.find_or_create_by(followee_id: @followee.id, follower_id: current_user.id)
    redirect_to request.referer, notice: 'Chef unfollowed successfully'
  end

	def destroy
		Follower.find_by(followee_id: @followee.id, follower_id: current_user.id).delete
    redirect_to request.referer, notice: 'Chef unfollowed successfully'
	end

  private
  def set_followee
    @followee = User.find(params[:id])
  end
end

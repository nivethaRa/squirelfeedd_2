class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def chef_profile
  end

  private
  def set_user
    @chef = User.find(params[:id])
  end
end

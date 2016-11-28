class PagesController < ApplicationController

  def product
  end

  def index
  end

  def home
  end

  def profile
  	@user = User.find_by(id: params[:id])
  	if @user.present?
      @name = @user.name 
  	else
  		redirect_to root_path, :notice=>"User not found!"
  	end
  end

end

class ChefRequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  def new
  	
  end

  def create

  	if @user.update_attributes(user_params)
      redirect_to request.referer, notice: 'Application sent to admin successfully.'
    end
  end

  private

  def set_user
  	@user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:city, :state, :job, :school, :address_line_1, :address_line_2, :pincode, :country, :delivery_and_pickup_available, :has_submitted_chef_request)
  end
end

class ProfileController < ApplicationController
  before_action :authenticate_user!

  def show
      @profile = current_user.profile || current_user.create_profile
      p @profile
  end

  def edit
    @profile = current_user.profile
  end
  
  def update
    current_user.update_profile(profile_params)
    @profile = current_user.profile || current_user.create_profile
    render :show
  end
     
  private
  def profile_params
    params.require(:profile).permit(:address, :dob, :email, :first_name, :last_name, :phone, :sex, :avatar)
  end
end

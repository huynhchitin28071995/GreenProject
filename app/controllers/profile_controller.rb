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
    puts '------------------------------------------------------------'
    puts 'UPDATE METHOD FROM PROFILE CONTROLLER'
    p profile_params
    p params
    if current_user.update_profile(profile_params)
      @profile = current_user.profile || current_user.create_profile
      render :show
    end
  end

  private
  def profile_params
      params.require(:profile).permit(
        :first_name, :last_name, :sex, :address, :phone, :dob, :avatar
      )
  end
  
end

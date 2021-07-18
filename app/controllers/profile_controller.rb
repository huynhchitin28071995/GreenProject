class ProfileController < ApplicationController
  before_action :authenticate_user!

  def show
    @profile = current_user.profile || current_user.creat_profile
    p @profile
  end

  def edit
    @profile = current_user.profile
  end

  def update
    puts 'UPDATE METHOD FROM PROFILE CONTROLLER'
    p params
    show if current_user.profile.update(params[:profile].permit!)
  end

#   def profile_params
      
#   end
  
end

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
    p params
  end
      
end

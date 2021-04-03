class HomeController < ApplicationController
  # layout 'auth'
  def index
    # render layout: 'auth'
    p user_signed_in?
    p current_user

  end
end

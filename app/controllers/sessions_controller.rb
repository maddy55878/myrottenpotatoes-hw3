  class SessionsController < ApplicationController
  # user shouldn't have to be logged in before logging in!
  skip_before_action :current_user
  def create
    user = User.from_omniauth(request.env["omniauth.auth"])   
    session[:user_id] = user.uid
    redirect_to root_path
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end


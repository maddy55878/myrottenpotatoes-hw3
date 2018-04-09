class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_user
  
  protected # prevents method from being invoked by a route
   helper_method :current_user

  def current_user
    @current_user ||= User.find_by(session[:user_id]) if session[:user_id]
  end
    

  end




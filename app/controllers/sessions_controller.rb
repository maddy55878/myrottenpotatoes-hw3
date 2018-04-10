  class SessionsController < ApplicationController
  # user shouldn't have to be logged in before logging in!
  skip_before_action :current_user
  def new
    #user wants to log in 
  end 
  
  def find    
      
    #raise params.to_yaml
    
    #raise params[:user][:email].inspect

    user = Movieuser.find_by_email(params[:user][:email]) 

    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      session[:provider] = nil   
      flash[:notice] = "logged in!" 
      redirect_to movies_path 
    else
      flash[:notice] = "Could not log in!" 
      redirect_to movies_path 
    end    

  end  
  def create
    user = User.from_omniauth(request.env["omniauth.auth"])   
    session[:user_id] = user.uid
    redirect_to root_path
  end
  def destroy
    session[:user_id] = nil
    session[:provider] = nil
    redirect_to root_path
  end
end


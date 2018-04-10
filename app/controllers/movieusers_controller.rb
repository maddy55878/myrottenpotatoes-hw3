class MovieusersController < ApplicationController
    class UsersController < ApplicationController
    
    skip_before_action :current_user 
    
	def new
			@user = Movieuser.new
	end
	
    def create

            # raise params.to_yaml

    		@user = Movieuser.new(user_params)

    		if @user.save 
    			session[:user_id] = @user.id 
				session[:provider] = nil  
    			flash[:notice] = "Thank you for signing up."
    			redirect_to movies_path
    		else 	
    			flash[:notice] = "Could not sign up!" 
                render "new"
            end
    end 
    
    def user_params
        params.require(:user).permit(:email, :name, :password_digest,:password, :password_confirmation)
    end
end
end

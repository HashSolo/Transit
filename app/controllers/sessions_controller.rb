class SessionsController < ApplicationController
  
  def new
	@title = "Sign In"
	
  if signed_in?
    redirect_to user_path(current_user)
  end 
	
  end
  
  def create
	user = User.authenticate(	params[:session][:email],
								params[:session][:password])
	if user.nil?
		flash.now[:error] = "Invalid email/password combination."
		@title = "Sign In"
		render 'new'
	else
		sign_in user
		redirect_back_or user
	end
  end
  
  def destroy
	sign_out
	redirect_to root_path
  end

end

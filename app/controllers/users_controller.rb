class UsersController < ApplicationController
  before_filter :authenticate, :except => [:show, :new, :create]
  before_filter :correct_user, 	:only => [:edit, :update]
  before_filter :admin_user, 	:only => :destroy
  
  def index
	@title = "All Users"
	@users = User.paginate(:page => params[:page])
  end
  
  def show
	@user = User.find(params[:id])
	
	@cases = Case.all
	if @user.clinician_account
	  @clinician = @user.clinician
    if !(@clinician.appointments.nil?)
       @appointments = @clinician.appointments
     end
  end
  
  @posts = Post.all
	
	@title = "Your Account"
  end

  def new
	@title = "Sign Up"
	@user = User.new
  end

  def create
	@user = User.new(params[:user])
	if @user.save
	  sign_in @user
	  flash[:success] = "Welcome to Transit!"
	  redirect_to @user
	else
	  @title = "Sign Up"
	  render 'new'
	end
  end

  def edit
	  @title = "Settings"

  end
  
  def update
	@user = User.find(params[:id])
	if @user.update_attributes(params[:user])
	  flash[:success] = "Profile updated."
	  redirect_to @user
	else
	  @title = "Edit User"
	  render 'edit'
	end
  end
  
  def destroy
	if current_user?(User.find(params[:id]))
		flash[:notice] = "You cannot destroy yourself"
		redirect_to users_path
	else
		User.find(params[:id]).destroy
		flash[:success] = "User destroyed."
		redirect_to users_path
	end
  end
  
  private
	
	def correct_user
	  @user = User.find(params[:id])
	  redirect_to(root_path) unless current_user?(@user)
	end
	
	def admin_user
	  redirect_to(root_path) unless current_user.admin_account?
	end
end

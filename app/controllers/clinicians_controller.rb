class CliniciansController < ApplicationController
  def index
    @title = "All Employees"
  end
  
  def show
    @clinician = Clinician.find(params[:id])
    @user = User.find(@clinician.user_id)
    @title = "Employee Account - #{@clinician.last_name}, #{@clinician.first_name}"
  end
  
  def new
    @title = "Add New Employee"
    @clinician = Clinician.new
  end
  
  def create
    #@clinician = Clinician.new
    @user = User.new
    @user.toggle(:clinician_account)

    #assigns dummy password to user for now
	  @user.password = "foobarbaz"
	  @user.password_confirmation = "foobarbaz"
	  @user.email = params[:clinician][:email]	  
   # @clinician = @user.clinician.build(params[:clinician])
    @clinician = Clinician.new(params[:clinician])     
     
    if @user.save
      @clinician.user_id = @user.id 
      @title = "user saved"
	     
  	    if @clinician.save
  	      flash[:success] = "New Clinician Successfully Created"
  	      redirect_to @clinician
  	    else
  	      flash[:failure] = "Invalid Clinician information"
  	      @title = "Error"
    	    render 'new'
	      end
  	else
  	  flash[:failure] = "Invalid Clinician information"
      @title = "Error"
	    render 'new'  
	  end
      
  end
  
  def edit
    @title = "Edit Your Account"
  end
  
  def update
  end
  
  def destroy
  end    

end

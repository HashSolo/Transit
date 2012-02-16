class CasesController < ApplicationController
  def index
	  @title = "Case Lookup"
	  @cases = Case.paginate(:page => params[:page])
    #@cases = Case.all
  end
  
  def show
  end

  def new
    @title = "Start New Case"
    @user = User.new
    @case = Case.new
    
    @appointment = @case.appointments.new  
    @clinicians = Clinician.all
    @referrers = Referrer.all
    
  end

  def create

	  @user = User.new(params[:user])
	  @user.patient = true

    #automatically generates a password for new user
	  #will create a helper to make a random pswd generator
	  @user.password = "foobarbaz"
	  @user.password_confirmation = "foobarbaz"
	  @user.save!

	  @case = @user.cases.build(params[:case])
	  @case.status = true
	  
	  if @case.save 
	    redirect_to edit_case_path(@case)
	  else
	    @title = "Error"
	    redirect_to cases_path
	  end
  end

  def edit
	  @case = Case.find_by_id(params[:id])
    @title = "Case #{@case.id}"  
  end
  
  def update
	  @case = Case.find(params[:id])
	  if @Case.update_attributes(params[:case])
	    flash[:success] = "Case updated."
	    redirect_to edit_case_path(@case)
	  else
	    @title = "Edit Case"
	    render 'edit'
	  end
  end
  
  def destroy
		Case.find_by_id(params[:id]).destroy
		flash[:success] = "Case destroyed."
		redirect_to cases_path
  end

end

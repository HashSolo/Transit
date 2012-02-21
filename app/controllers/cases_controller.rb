class CasesController < ApplicationController
  def index
	  @title = "Case Lookup"
	  @cases = Case.paginate(:page => params[:page])
  end
  
  def show
    @case = Case.find_by_id(params[:id])
    @title = "Case #{@case.id}"  
    @clinician = Clinician.find_by_id(@case.clinician_id) 
    @referrer = Referrer.find_by_id(@case.referrer_id)
    @user = User.find_by_id(@case.user_id)
  end

  def new
    @title = "Start New Case"
    @user = User.new
    @case = Case.new    
    @appointment = Appointment.new  
    
    @clinicians = Clinician.all
    @referrers = Referrer.all
    
  end

  def create

	  @user = User.new(params[:user])
	  @user.toggle(:patient_account)

    #automatically generates a password for new user
	  #will create a helper to make a random pswd generator
	  @user.password = "foobar"
	  @user.password_confirmation = "foobar"
	  @case = @user.cases.build(params[:case])
	  
	  if @user.save
	    @appointment = @case.appointments.build(params[:appointment])
	    if @appointment.save
	      flash[:success] = "New Case Successfully Created"
	      redirect_to case_path(@case)
	    else
	      @title = "Error"
	      @clinicians = Clinician.all
        @referrers = Referrer.all
        @appointment = Appointment.new  
  	    render 'new'
      end
	  else
	    @title = "Error"
	    @clinicians = Clinician.all
      @referrers = Referrer.all
      @appointment = Appointment.new        
	    render 'new'
	  end
  end

  def edit
	  @case = Case.find(params[:id])
    @title = "Case #{@case.id}"  
    
    @clinicians = Clinician.all
    @referrers = Referrer.all
    
    @clinician = Clinician.find(@case.clinician_id) 
    @referrer = Referrer.find(@case.referrer_id)
    @user = User.find(@case.user_id)
    @appointment = Appointment.find_by_case_id(@case.id)
    @appointment_clinician = Clinician.find(@appointment.clinician_id)
  
  end
  
  def update
	  @case = Case.find(params[:id])
	  if @case.update_attributes(params[:case])
	    flash[:success] = "Case updated."
	    redirect_to case_path(@case)
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

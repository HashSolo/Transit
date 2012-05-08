class CasesController < ApplicationController
  before_filter :load_case_schedule, :only => [:show, :edit]
  before_filter :load_clinician_schedule, :only => :index 
  
  def index
	  @title = "Case Lookup"
	 # @clinician = current_user.clinician
	#  @appointments = @clinician.appointments
	  @cases = Case.paginate(:page => params[:page])
  end
  
  def show
    @case = Case.find(params[:id])
    @title = "Case #{@case.id}"  
    @clinician = Clinician.find(@case.clinician_id) 
    @referrer = Referrer.find(@case.referrer_id)
    @user = User.find(@case.user_id)
    @patients = @case.patients.all
    
    @appointments = @case.appointments
    
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
	  @user.save
	  
	  @case = Case.new(params[:case])
	  @case.save
	  @user.cases << @case
	  @case.clinician_id = params[:case][:clinician_id]
	  @case.referrer_id = params[:case][:referrer_id]

	  
	  #@case = @user.cases.build(params[:case])
	  #@case.clinician_id = params[:case][:clinician_id]
	  #@case.referrer_id = params[:case][:referrer_id]
	  
	  @appointment = Appointment.new(params[:appointment])
	  @appointment.save
	  @case.appointments << @appointment
	  
	  if @case.save
	   # @appointment = @case.appointments.build(params[:appointment])
	    #if @appointment.save
	      @title = "New Case!"
	      flash[:success] = "New Case Successfully Created"
	      redirect_to case_path(@case)
	    #else
	    #  @title = "Error"
	    #  @clinicians = Clinician.all
      #  @referrers = Referrer.all
      #  @appointment = Appointment.new  
  	  #  render 'new'
    #  end
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
	  @case.clinician_id = params[:case][:clinician_id]
	  @case.referrer_id = params[:case][:referrer_id]
	  
	  if @case.update_attributes(params[:case]) #&& @user.update_attributes(params[:user])
	  
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
  
  private
  
  def load_clinician_schedule
    @clinician = current_user.clinician
    @appointments = @clinician.appointments
  end
  
  def load_case_schedule
    @case = Case.find(params[:id])
    @appointments = @case.appointments
  end
  
 # def load_schedule
#  @appointments = Appointment.where(:case_id => params[:id])
#  end

end

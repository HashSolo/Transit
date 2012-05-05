class AppointmentsController < ApplicationController
  def index
    @title = "Clinic Calendar"
    
    date = Date.today
    
    if(params[:date].nil?)
      date = Date.today
    else
      date = Date.strptime(params[:date], '%m/%d/%Y')
      #date = Date.parse(params[:date])
      starting_datetime = date.to_datetime
      ending_datetime = (date.to_time + 24.hours).to_datetime
      puts "#{date}"
    end
    
    @appointments = Appointment.where(:date_and_time => (starting_datetime..ending_datetime))
    
    respond_to do |format|
      format.html {}
      format.json { render :json => @appointments.to_json() }
    end
  end
  
  def show
    @appointment = Appointment.find(params[:id])
    
    @datetime = @appointment.date_and_time
    @title = "Appointment for #{@datetime.strftime("%Y-%m-%d %H:%M:%S")}"
  end
  
  #as implemented at http://ramblings.gibberishcode.net/archives/rails-has-and-belongs-to-many-habtm-demystified/17
  def get_all_patients
    @case = Case.find(params[:case_id])
    @patients = @case.patients
  end
  
  def get_all_clinicians
    @clinicians = Clinician.all
  end
  
  def new
    @title = "Add New Employee"
    @case = Case.find(params[:case_id])
    @appointment = Appointment.new

    
    get_all_patients
    get_all_clinicians
  end
  
  def create
    @appointment = Appointment.new(params[:appointment])
    @case = Case.find(params[:case_id])
    @case.appointments << @appointment
    get_all_patients
    get_all_clinicians
    
    if @appointment.save
      @title = "New Appointment Scheduled"
      #render 'show'
      redirect_to case_path(@case)
    else
      @title = "Error"
      @appointment = Appointment.new
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

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
  
  def new
    @title = "Add New Employee"
  end
  
  def create
  end
  
  def edit
    @title = "Edit Your Account"
  end
  
  def update
  end
  
  def destroy
  end
end

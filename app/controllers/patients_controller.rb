class PatientsController < ApplicationController

def index
  @title = "Patients Index"
  @patients = Patient.paginate(:page => params[:page])
end

def show
  @title = "Show Patient"
  @patient = Patient.find(params[:id])
end

def new
  @title = "Add a New Patient"
  @patient = Patient.new
end

def create 
  @title = "New Patient Successfully Added"
  @patient = Patient.new(params[:patient])
  
  if @patient.save

    flash[:success] = "New Patient Successfully Added"
    redirect_to patients_path
      
  else
    @title = "Error"       
    render 'new'
  end
  
end

def edit
  @title = "Edit Patient"
  @patient = Patient.find(params[:id])
end

def update
    @patient = Patient.find(params[:id])
	  if @patient.update_attributes(params[:patient])
	    flash[:success] = "Patient updated."
	    redirect_to patient_path(@patient)
	  else
	    @title = "Edit Patient"
	    render 'edit'
	  end
end

end

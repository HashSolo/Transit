class PatientsController < ApplicationController

def index
  @title = "Patients Index"
  @case = Case.find(params[:case_id])
  @patients = @case.patients.all
end

def show
  @title = "Show Patient"
  @case = Case.find(params[:case_id])
  @patient = Patient.find(params[:id])
end

def new
  @title = "Add a New Patient"
  @case = Case.find(params[:case_id])
  @patient = Patient.new
end

def add
  @title = "Add existing patient"
  @case = Case.find(params[:case_id])
  @patients = Patient.all
  @patient_id = { :patient_id => 1 }
end

def create 
  @title = "New Patient Successfully Added"
  @patient = Patient.new(params[:patient])
  @case = Case.find(params[:case_id])
  
  @case.patients << @patient 
  
  if @patient.save

    flash[:success] = "New Patient Successfully Added"
    redirect_to case_patients_path(params[:case_id])
      
  else
    @title = "Error"       
    render 'new'
  end
  
end

def edit
  @title = "Edit Patient"
  @case = Case.find(params[:case_id])
  @patient = Patient.find(params[:id])
end

def update
  @case = Case.find(params[:case_id])
  @patient = Patient.find(params[:id])
  if @patient.update_attributes(params[:patient])
    flash[:success] = "Patient updated."
    redirect_to case_patient_path(@case, @patient)
  else
    @title = "Edit Patient"
    render 'edit'
  end
end

end

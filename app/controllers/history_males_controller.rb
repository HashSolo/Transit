class HistoryMalesController < ApplicationController
  
  
  def new
    @title = "New Male history"
    @case = Case.find(params[:case_id])
    @patient = Patient.find(params[:patient_id])
    @history = HistoryMale.new
  end
  
  def create
    @title = "New History Successfully Added"
    @case = Case.find(params[:case_id])
    @history = HistoryMale.new(params[:history_male])
    @history.patient_id = params[:patient_id]
    if @history.save

      flash[:success] = "New History Successfully Added"
      redirect_to case_patients_path(@case.id)

    else
      @title = "Error"       
      render 'new'
    end
    
  end
  
  def index
  end
  
  def show
    @title = "Show History"
    @case = Case.find(params[:case_id])
    @patient = Patient.find(params[:patient_id])
    @history = HistoryMale.find(params[:id])
  end
  
  def edit
    @title = "Edit Male History"
    @case = Case.find(params[:case_id])
    @patient = Patient.find(params[:patient_id])
    @history = HistoryMale.find(params[:id])
  end
  
  def update
    @case = Case.find(params[:case_id])
    @patient = Patient.find(params[:patient_id])
    @history = HistoryMale.find(params[:id])
  	if @history.update_attributes(params[:history_male])
  	  flash[:success] = "Medical Info updated"
  	  redirect_to case_patient_history_male_path(@case.id, @patient.id, @history.id)
  	else
  	  @title = "Edit Patient"
  	  render 'edit'
  	end
  end
  
end

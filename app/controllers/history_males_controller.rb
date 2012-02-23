class HistoryMalesController < ApplicationController
  
  
  def new
    @title = "New Male history"
    @patient = Patient.find(params[:patient_id])
    @history = HistoryMale.new
  end
  
  def create
    @title = "New History Successfully Added"
    @history = HistoryMale.new(params[:history_male])
    @history.patient_id = params[:patient_id]
    if @history.save

      flash[:success] = "New History Successfully Added"
      redirect_to patients_path

    else
      @title = "Error"       
      render 'new'
    end
    
  end
  
  def index
  end
  
  def show
    @title = "Show History"
    @patient = Patient.find(params[:patient_id])
    @history = HistoryMale.find(params[:id])
  end
  
  def edit
    @title = "Edit Male History"
    @patient = Patient.find(params[:patient_id])
    @history = HistoryMale.find(params[:id])
  end
  
  def update
     @history = HistoryMale.find(params[:id])
  	  if @history.update_attributes(params[:history_male])
  	    flash[:success] = "Medical Info updated"
  	    redirect_to patient_history_male_path(params[:patient_id], @history.id)
  	  else
  	    @title = "Edit Patient"
  	    render 'edit'
  	  end
  end
  
end

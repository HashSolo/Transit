class HistoryFemalesController < ApplicationController
  
  
  def new
    @title = "New Female history"
    @patient = Patient.find(params[:patient_id])
    @history = HistoryFemale.new
  end
  
  def create
    @title = "New History Successfully Added"
    @history = HistoryFemale.new(params[:history_female])
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
    @history = HistoryFemale.find(params[:id])
  end
  
  def edit
    @title = "Edit Female History"
    @patient = Patient.find(params[:patient_id])
    @history = HistoryFemale.find(params[:id])
  end
  
  def update
     @history = HistoryFemale.find(params[:id])
  	  if @history.update_attributes(params[:history_female])
  	    flash[:success] = "Medical Info updated"
  	    redirect_to patient_history_female_path(params[:patient_id], @history.id)
  	  else
  	    @title = "Edit Patient"
  	    render 'edit'
  	  end
  end
  
end

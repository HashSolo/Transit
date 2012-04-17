class HistoryFemalesController < ApplicationController
  
  
  def new
    @title = "New Female history"
    @case = Case.find(params[:case_id])
    @patient = Patient.find(params[:patient_id])
    #@patient = @case.current_patient
    @history = HistoryFemale.new
  end
  
  def create
    @title = "New History Successfully Added"
    @case = Case.find(params[:case_id])
    @history = HistoryFemale.new(params[:history_female])
    @patient = Patient.find(params[:patient_id])
    
    @history.patient_id = @patient.id
    
    #@patient.history_female << @history
    
    # reset helper variable...actually not strictly necessary
    if @history.save

      flash[:success] = "New History Successfully Added"
      redirect_to case_patient_path(params[:case_id], params[:patient_id])

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
    @history = HistoryFemale.find(params[:id])
    @patient = Patient.find(@history.patient_id)
  end
  
  def edit
    @title = "Edit Female History"
    @case = Case.find(params[:case_id])
    @history = HistoryFemale.find(params[:id])
    @patient = Patient.find(@history.patient_id)
    
    if !(params[:count].nil?)
      count = params[:count]
      for i in 1..count
        @pregnancy = Pregnancy.new(:history_female_id => @history.id)
        @pregnancy.save
        @pregnancies << @pregnancy
      end
    end
  
    respond_to do |format|
      format.html {}
      format.json { render :json => @pregnancies }
    end
  
  end
  
  def update
     @case = Case.find(params[:case_id])
     @patient = Patient.find(params[:patient_id])
     @history = HistoryFemale.find(params[:id])
     
  	  if @history.update_attributes(params[:history_female])
  	    flash[:success] = "Medical Info updated"
  	    redirect_to case_patient_history_female_path(@case.id, @patient.id, @history.id)
    	  else
  	    @title = "Edit Patient"
  	    render 'edit'
  	  end
  end
  
end

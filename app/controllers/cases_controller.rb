class CasesController < ApplicationController
  def index
	  @title = "Case Lookup"
	  @cases = Case.paginate(:page => params[:page])
  end
  
  def show
  end

  def new
    @title = "Start New Case"
    @user = User.new
    @case = @user.cases.new
    @appointment = @case.appointments.new  
    @clinicians = Clinician.all
    @referrers = Referrer.all
    
  end

  def create
	  @case = Case.new(params[:case])
	  if @case.save
	    redirect_to edit_case_path(@case)
	  else
	    @title = "Error"
	    redirect_to cases_path
	  end
  end

  def edit
	  @title = "Case Overview"
	  @case = Case.find_by_id(params[:id])
  end
  
  def update
	  @case = Case.find(params[:id])
	  if @Case.update_attributes(params[:case])
	    flash[:success] = "Case updated."
	    redirect_to edit_case_path(@case)
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

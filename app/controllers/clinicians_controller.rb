class CliniciansController < ApplicationController
  def index
    @title = "All Employees"
  end
  
  def show
    @clinician = Clinician.find(params[:id])
    @user = User.find_by_clinician_id(@clinician.id)
    @title = "Employee Account - #{@clinician.last_name}, #{@clinician.first_name}"
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

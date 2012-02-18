class ReferrersController < ApplicationController
  def index
    @title = "All Referrers"
  end
  
  def show
    @referrer = Referrer.find(params[:id])
    @title = "Referrrer"
  end
  
  def new
    @title = "Add New Referrer"
    @referrer = Referrer.new
  end
  
  def create
    @referrer = Referrer.new(params[:referrer])
    if @referrer.save
	    flash[:success] = "New Referrer Successfully Created"
	    redirect_to @referrer
	  else
	    @title = "Error"
	    render 'new'
	  end
  end
  
  def edit
    @title = "Edit Referrer."
  end
  
  def update
  end
  
  def destroy
  end
end

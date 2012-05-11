class PostsController < ApplicationController
  
  def new
    @title = "Posts"
    @appointments = current_user.clinician.appointments
    @clinician = Clinician.find(params[:clinician_id])
    @posts = Post.all
    @post = Post.new
  end
  
  def create
    @clinician = Clinician.find(params[:clinician_id])
    @post = Post.new(params[:post])
    
    @clinician.posts << @post
    
    if @post.save
        redirect_to new_clinician_post_path(params[:clinician_id])
    else
      @title = "Error"       
      render 'new'
    end
    
  end
  
  def index
    
  end
  
  
end

module PagesHelper
  def is_active?(page_name)
		pageaction = params[:action]
		pagecontroller = params[:controller]
		actionandcontroller = pagecontroller + "#" + pageaction
		if actionandcontroller == page_name
			"active"
		else
			""
		end
	end
	
	def is_controller_active?(controller_name)
	  page_controller = params[:controller]
	  if(controller_name==page_controller)
	    return true
    else
      return false
    end
  end
  
  def is_action_active?(action_name)
	  page_action = params[:action]
	  if(action_name==page_action)
	    return true
    else
      return false
    end
  end
  
  #method used in the header partial to highlight the active tab 
  def is_state_active?(controller_name, action_name)
    if is_controller_active?(controller_name) && is_action_active?(action_name)  
		  "header_selected" 
	  else
		  "header_button"
	  end  
  end
	
end

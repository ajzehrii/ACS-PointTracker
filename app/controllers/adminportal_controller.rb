class AdminportalController < ApplicationController
  def show
    render template: "Adminportal/#{params[:page]}"
  end

  
  # GET /calendarevents or /calendarevents.json


  def admin
    # limits access to admins only
    authenticate_user!

    # if current user is an admin, continue to page
    if current_user.admin
       return
    #else return to login page 
    else 
       redirect_to login_path
    end
    
  end


  
end

class AdminportalController < ApplicationController
  def show
    render template: "Adminportal/#{params[:page]}"
  end

  
  # GET /calendarevents or /calendarevents.json


  def admin
    respond_to do |format|
      # limits access to admins only
      authenticate_user!

      # if current user is an admin, continue to page
      if current_user.admin
          return
      #else return to login page 
      else 
          format.html { redirect_to login_path, notice: 'You do not have access this page' }
          format.json { head :no_content }
      end
    end
    
  end


  
end

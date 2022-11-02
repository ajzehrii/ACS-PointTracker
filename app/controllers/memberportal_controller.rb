class MemberportalController < ApplicationController
  def show
    render template: "Memberportal/#{params[:page]}"
  end

  
  # GET /calendarevents or /calendarevents.json


  def member
    # limits access to admins only
    #authenticate_user!

    
    
  end


  
end

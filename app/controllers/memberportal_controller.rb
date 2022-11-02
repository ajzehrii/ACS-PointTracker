class MemberportalController < ApplicationController
  def show
    render template: "Memberportal/#{params[:page]}"
  end

  
  # GET /calendarevents or /calendarevents.json


  def member
    # limits access to admins only
    #authenticate_user!
    # if current user is an admin, continue to page
  end
end

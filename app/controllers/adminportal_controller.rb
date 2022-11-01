class AdminportalController < ApplicationController
  def show
    render template: "Adminportal/#{params[:page]}"
  end

  
  # GET /calendarevents or /calendarevents.json
  def admin
    @calendarevents = Calendarevent.all
  end


  
end

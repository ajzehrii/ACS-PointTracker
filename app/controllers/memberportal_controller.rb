class MemberportalController < ApplicationController
  def show
    render template: "Memberportal/#{params[:page]}"
  end

  
  # GET /calendarevents or /calendarevents.json


  def member
    @calendarevents = Calendarevent.all
    @meetings = Meeting.all
    @attendances = Attendance.all
    authenticate_user!
  end
end

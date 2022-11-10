class MemberportalController < ApplicationController
  def show
    render template: "Memberportal/#{params[:page]}"
  end

  def member
    @calendarevents = Calendarevent.all
    @meetings = Meeting.all
    @attendances = Attendance.all
    authenticate_user!
  end
end

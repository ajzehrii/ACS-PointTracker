class MemberportalController < ApplicationController
  before_action :authenticate_user!, :except => [:welcome]
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

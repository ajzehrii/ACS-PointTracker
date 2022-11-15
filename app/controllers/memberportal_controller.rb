# frozen_string_literal: true

class MemberportalController < ApplicationController
  before_action :authenticate_user!, except: [:welcome]

  def member
    @calendarevents = Calendarevent.all
    @meetings = Meeting.all
    @attendances = Attendance.all
    authenticate_user!
  end
end

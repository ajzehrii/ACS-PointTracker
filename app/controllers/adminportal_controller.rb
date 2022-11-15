# frozen_string_literal: true

class AdminportalController < ApplicationController
  before_action :authenticate_user!, except: [:welcome]

  # GET /calendarevents or /calendarevents.json

  def admin
    respond_to do |format|
      # limits access to admins only
      authenticate_user!

      # if current user is an admin, continue to page
      if current_user.admin
        return
      # else return to login page
      else
        format.html { redirect_to login_path, notice: 'You do not have access this page' }
        format.json { head :no_content }
      end
    end
  end
end

# frozen_string_literal: true

class CalendareventsController < ApplicationController
  before_action :set_calendarevent, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: [:welcome]

  # GET /calendarevents or /calendarevents.json
  def index
    @calendarevents = Calendarevent.all
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

  def admin
    @calendarevents = Calendarevent.all
    @meetings = Meeting.all
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

  def member
    @calendarevents = Calendarevent.all
  end

  # GET /calendarevents/1 or /calendarevents/1.json
  def show; end

  # GET /calendarevents/new
  def new
    @calendarevent = Calendarevent.new
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

  # GET /calendarevents/1/edit
  def edit
    @calendarevent = Calendarevent.new
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

  # POST /calendarevents or /calendarevents.json
  def create
    @calendarevent = Calendarevent.new(calendarevent_params)

    respond_to do |format|
      if @calendarevent.save
        format.html { redirect_to calendarevent_url(@calendarevent), notice: 'Calendarevent was successfully created.' }
        format.json { render :show, status: :created, location: @calendarevent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @calendarevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calendarevents/1 or /calendarevents/1.json
  def update
    respond_to do |format|
      if @calendarevent.update(calendarevent_params)
        format.html { redirect_to calendarevent_url(@calendarevent), notice: 'Calendarevent was successfully updated.' }
        format.json { render :show, status: :ok, location: @calendarevent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @calendarevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendarevents/1 or /calendarevents/1.json
  def destroy
    @calendarevent.destroy

    respond_to do |format|
      format.html { redirect_to admin_calendar_url, notice: 'Calendarevent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_calendarevent
    @calendarevent = Calendarevent.find(params[:id])
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

  # Only allow a list of trusted parameters through.
  def calendarevent_params
    params.require(:calendarevent).permit(:name, :description, :start_time, :end_time)
  end
end

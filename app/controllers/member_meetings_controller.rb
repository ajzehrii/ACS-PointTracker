# frozen_string_literal: true

class MemberMeetingsController < ApplicationController
  before_action :set_member_meeting, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: [:welcome]

  # GET /member_meetings or /member_meetings.json
  def index
    @member_meetings = MemberMeeting.all
  end

  # GET /member_meetings/1 or /member_meetings/1.json
  def show; end

  # GET /member_meetings/new
  def new
    @member_meeting = MemberMeeting.new
  end

  # GET /member_meetings/1/edit
  def edit; end

  # POST /member_meetings or /member_meetings.json
  def create
    @member_meeting = MemberMeeting.new(member_meeting_params)

    respond_to do |format|
      if @member_meeting.save
        format.html do
          redirect_to member_meeting_url(@member_meeting), notice: 'Member meeting was successfully created.'
        end
        format.json { render :show, status: :created, location: @member_meeting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @member_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_meetings/1 or /member_meetings/1.json
  def update
    respond_to do |format|
      if @member_meeting.update(member_meeting_params)
        format.html do
          redirect_to member_meeting_url(@member_meeting), notice: 'Member meeting was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @member_meeting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @member_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_meetings/1 or /member_meetings/1.json
  def destroy
    @member_meeting.destroy

    respond_to do |format|
      format.html { redirect_to member_meetings_url, notice: 'Member meeting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_member_meeting
    @member_meeting = MemberMeeting.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def member_meeting_params
    params.require(:member_meeting).permit(:member_id, :meeting_id)
  end
end

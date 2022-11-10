
class MeetingsController < ApplicationController
  before_action :set_meeting, only: %i[ show edit update destroy ]

  # GET /meetings or /meetings.json
  def index
    @meetings = Meeting.all
  end
  def admin
    @meetings = Meeting.all
    respond_to do |format|
      # limits access to admins only
      authenticate_user!

      # if current user is an admin, continue to page
      if current_user.admin
          return
      #else return to login page 
      else 
          format.html { redirect_to login_path, notice: 'You do not have access this page' }
          format.json { head :no_content }
      end
    end
  end

  def m 
    @meetings = Meeting.all
    @attendances = Attendance.all
      authenticate_user!
  end

  # GET /meetings/1 or /meetings/1.json
  def show
    @meetings = Meeting.all
    @attendances = Attendance.all
    @users= User.all
  end

  # GET /meetings/new
  def new
    @meetings = Meeting.all
    @meeting = Meeting.new
  end

  # GET /meetings/1/edit
  def edit
    @meetings = Meeting.alls
  end

  # POST /meetings or /meetings.json
  def create
    @meetings = Meeting.all
    @meeting = Meeting.new(meeting_params)
    @meeting.start_time = @meeting.date
    @meeting.end_time = @meeting.date

    respond_to do |format|
      if @meeting.save
        format.html { redirect_to admin_path, notice: "Meeting was successfully created." }
        format.json { render :show, status: :created, location: @meeting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meetings/1 or /meetings/1.json
  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to admin_path, notice: "Meeting was successfully updated." }
        format.json { render :show, status: :ok, location: @meeting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/1 or /meetings/1.json
  def destroy
    @meeting.destroy

    respond_to do |format|
      format.html { redirect_back fallback_location: root_path, notice: "Meeting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meeting_params
      params.require(:meeting).permit(:meeting_ID, :date, :name, :description, :pointval, :active)
    end
end

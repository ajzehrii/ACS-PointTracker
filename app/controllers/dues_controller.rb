class DuesController < ApplicationController
  before_action :set_due, only: %i[show edit update destroy]
  before_action :authenticate_user!, :except => [:welcome]

  # GET /dues or /dues.json
  def index
    @dues = Due.all
  end
  def admin
    @dues = Due.all
    @users = User.all
  end

  # GET /dues/1 or /dues/1.json
  def show; end

  # GET /dues/new
  def new
    @due = Due.new
  end

  # GET /dues/1/edit
  def edit; end

  # POST /dues or /dues.json
  def create
    @due = Due.new(due_params)

    respond_to do |format|
      if @due.save
        format.html { redirect_to admin_dues_path, notice: 'Due was successfully updated.' }
        format.json { render :show, status: :created, location: @due }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @due.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dues/1 or /dues/1.json
  def update
    respond_to do |format|
      if @due.update(due_params)
        format.html { redirect_to due_url(@due), notice: 'Due was successfully updated.' }
        format.json { render :show, status: :ok, location: @due }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @due.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dues/1 or /dues/1.json
  def destroy
    @due.destroy

    respond_to do |format|
      format.html { redirect_to dues_url, notice: 'Due was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def remove_all
    Due.delete_all
    respond_to do |format|
      format.html { redirect_to admin_dues_path, notice: 'You have removed all dues!' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_due
    @due = Due.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def due_params
    params.permit(:student_ID, :paid)
  end
end

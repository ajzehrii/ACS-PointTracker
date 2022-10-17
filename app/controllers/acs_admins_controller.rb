class AcsAdminsController < ApplicationController
  before_action :set_acs_admin, only: %i[show edit update destroy]

  # GET /acs_admins or /acs_admins.json
  def index
    @acs_admins = AcsAdmin.all
  end

  # GET /acs_admins/1 or /acs_admins/1.json
  def show; end

  # GET /acs_admins/new
  def new
    @acs_admin = AcsAdmin.new
  end

  # GET /acs_admins/1/edit
  def edit; end

  # POST /acs_admins or /acs_admins.json
  def create
    @acs_admin = AcsAdmin.new(acs_admin_params)

    respond_to do |format|
      if @acs_admin.save
        format.html { redirect_to acs_admin_url(@acs_admin), notice: 'Acs admin was successfully created.' }
        format.json { render :show, status: :created, location: @acs_admin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @acs_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acs_admins/1 or /acs_admins/1.json
  def update
    respond_to do |format|
      if @acs_admin.update(acs_admin_params)
        format.html { redirect_to acs_admin_url(@acs_admin), notice: 'Acs admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @acs_admin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @acs_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acs_admins/1 or /acs_admins/1.json
  def destroy
    @acs_admin.destroy

    respond_to do |format|
      format.html { redirect_to acs_admins_url, notice: 'Acs admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_acs_admin
    @acs_admin = AcsAdmin.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def acs_admin_params
    params.require(:acs_admin).permit(:admin_ID, :student_ID, :username, :password, :position)
  end
end

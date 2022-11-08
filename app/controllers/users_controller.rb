class UsersController < ApplicationController
    #ignore this

    def profile
        @attendances = Attendance.all
        @meetings = Meeting.all
        @users = User.all
    end

    def edit
        
        @user = User.find(params[:id])
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

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    
        respond_to do |format|
          format.html { redirect_to admin_members_path, notice: 'Member was successfully deleted.' }
          format.json { head :no_content }
        end
    end
   
   
    def update
        @user = User.find(params[:id])
        respond_to do |format|
            if @user.update(user_params)
                format.html { redirect_to request.referrer, notice: 'Member successfully updated' }
                format.json { head :no_content }
            else
            render 'edit'
            end
        end
    end

    def user_params
        params.require(:user).permit(:student_id, :admin)
    end
end
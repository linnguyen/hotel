class SessionsController < ApplicationController
  def new
  end

  def create
  	user=User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
         login user
         flash[:success]="Welcome to Plaza Hotel"
         if user.permission.role == 1
          redirect_to admin_rooms_path
         else
          redirect_to  checkins_path
         end 
  	else
  		flash[:danger]='Invalid emails/password '
  		render 'new'
  	end
  end

  def destroy
  	log_out
  	redirect_to root_path
  end
end

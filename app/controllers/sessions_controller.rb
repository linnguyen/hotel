class SessionsController < ApplicationController
  def new
  end

  def create
  	user=User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
         login user
         redirect_to bookrooms_path
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

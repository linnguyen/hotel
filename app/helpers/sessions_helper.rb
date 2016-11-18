module SessionsHelper
	# log in the given user
	def login(user)
		session[:user_id]=user.id
	end

	#Returns the current logged-in user
	def current_user
		@current_user ||=User.find_by(id: session[:user_id])
	end
    #check if user login
	def logged_in?
		!current_user.nil?
	end
    #logout out the current user
	def log_out
		session.delete(:user_id)
		@current_user=nil
	end
end

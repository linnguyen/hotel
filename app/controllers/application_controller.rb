class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  # kiểm tra thực hiên checkin gấn đây

  before_filter :set_no_cache

	 def set_no_cache
	response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
	response.headers["Pragma"] = "no-cache"
	response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
	end

  def check_checked_in?
   	  	return current_user.checkins.nil? || current_user.checkins.where("status = ?",0).nil?
  end

   def current_check_in
   	    #current_user.checkins.
   end
  
end

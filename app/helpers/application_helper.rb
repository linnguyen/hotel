module ApplicationHelper
	# kiểm tra thực hiên checkin gấn đây
	def check_checked_in?
   	  	if !current_user.checkins.nil?
          return !current_user.checkins.where("status =?",0).nil?
   	  	else
   	  		return false
   	  	end
   end

   def current_check_in
   	    current_user.checkins.where("status =?",0)
   end
end

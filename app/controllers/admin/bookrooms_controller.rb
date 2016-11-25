class Admin::BookroomsController < ApplicationController
	def index
		#@bookrooms=Checkin.distinct.paginate(page: params[:page],per_page: 2)
		@bookrooms = Checkin.group(:user_id).paginate(page: params[:page],per_page: 2)
	end
    
    def checkin
    	#get params user_id
        @user=User.find_by_id(params[:user_id]) 
        #get all checkin       
        @checkins=@user.checkins   
        #update status   
    	@checkins.each do |c|
          c.staying!
	    end
	    redirect_to admin_bookrooms_path
    end

	def show
        #get params user_id
        @user=User.find_by_id(params[:user_id]) 
        #get all checkin       
        @checkins=@user.checkins.   
	end

	def checkout
        @user_id = params[:user_id]
        #=> tới trang phương thức thanh toán
        
	end
	def destroy
		#destroy checkin
	end

	def bill
        #get params paymethod
        @paymethod=params[:pay]
        #get params user_id
		@user=User.find_by_id(params[:user_id])      
        #Save vao payment va thống kê

        #show view
		@checkins=@user.checkins
		#update status thành finish
		@checkins.each do |c|
          c.finish!
	    end

       
    end



	
end
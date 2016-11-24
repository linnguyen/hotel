class Admin::BookroomsController < ApplicationController
	def index
		#@bookrooms=Checkin.distinct.paginate(page: params[:page],per_page: 2)
		@bookrooms = Checkin.group(:user_id).paginate(page: params[:page],per_page: 2)
	end
	def show
		#details checin
	end

	def checkout

	end
	def destroy
		#destroy checkin
	end

	def bill
	end

	
end
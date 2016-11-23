class Admin::BookroomsController < ApplicationController
	def index
		@bookrooms=Checkin.paginate(page: params[:page],per_page: 4)
	end
	def show
	end
end
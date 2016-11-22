class CheckinsController < ApplicationController
	def index
		@rooms=Room.all
    end
    def new
    	@checkin=current_user.checkins.new
    	@room=Room.find_by(id: params[:room_id])
    end
end

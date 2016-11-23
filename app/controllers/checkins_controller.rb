class CheckinsController < ApplicationController
	def index
		@rooms=Room.all
    end
  def new
    	@checkin=current_user.checkins.build
    	@checkin.lineitems.build
    	#@lineitem_details=@lineitem.lineitem_details.build
    	@checkin.lineitems.each do |lineitem|
          lineitem.lineitem_details.build
      end
     	@room=Room.find_by(id: params[:room_id])
    end

  def create
      #khong phải là giải pháp cuối cùng =>
      #1,chưa thực hiện checkin bao giờ 
      #2.check in cuối cùng đã kết thúc
      # if check_checked_in?
      #   current_check_in.lineitem.create checkin1_params
      # else
       @checkin =Checkin.create checkin_params
      #end
       #debugger
       redirect_to checkins_path
   end

    private

    def checkin_params
       params.require(:checkin).permit(:numberofperson,:telephone,:user_id, 
        :description, lineitems_attributes:[:id,:startdate,lineitem_details_attributes:[:id,:nameguest]])
     #debugger
    end
end

class CheckinsController < ApplicationController
  before_action :logged_in_user, only: [:index, :create]
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
     
     #debugger
      #if  current_user.checkins.exists? && current_user.checkins.where("status = ?",0).exists?

          #current_check_in.lineitems.create checkin_params1
          # current_checkin=current_user.checkins.last
           #current_checkin.lineitems.create()
           

           # current_checkin.lineitems.create(room_code: params[:checkin][:lineitems_attributes]["0"][:room_code],
           #                   startdate: params[:checkin][:lineitems_attributes]["0"][:fromdate],
           #                   fromdate: params[:checkin][:lineitems_attributes]["0"][:fromdate])
          
          

           # n = params[:checkin][:lineitems_attributes]["0"][:lineitem_details_attributes].count
           # for i in 1..n

          #params[:checkin][:lineitems_attributes]["0"][:lineitem_details_attributes].each do |f| 
         
               
          #end


      #else
          @checkin =Checkin.create checkin_params
           # @checkin=current_user.checkins.last
           # @checkin.lineitems.create checkin_params1

     # end
       #debugger
       redirect_to checkins_path
       #end
  end

    private

    def checkin_params
       params.require(:checkin).permit(:telephone,:user_id,:description,
        lineitems_attributes:[:id,:room_code,:startdate,:fromdate,:numberofperson,
        lineitem_details_attributes:[:id,:nameguest,:identification,:address]])
       

     # debugger
    end

     def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_path
      end
    end

    

end

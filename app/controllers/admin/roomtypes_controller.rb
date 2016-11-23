class Admin::RoomtypesController < ApplicationController
	def new
      @room_type=Roomtype.new
    end
    def create
       @room_type=Roomtype.new (room_type_params)
       if @room_type.save
       	flash[:success]="Room type created successfully"
       	redirect_to admin_roomtypes_path
       else
       	render 'new'
       end
    end
    def index
    	@roomtypes=Roomtype.paginate(page: params[:page],per_page: 4)
    end

    def edit
    	@roomtype=Roomtype.find_by(params[:id])
    end
    def update
    	@roomtype=Roomtype.find_by(params[:id])
    	if @roomtype.update_attributes(room_type_params)
    		flash[:success]="Room type update successfully"
    		redirect_to admin_roomtypes_path
    	else
    		render 'edit'
    	end
    end
    def destroy
      Roomtype.find(params[:id]).destroy
      redirect_to admin_roomtypes_path
    end

    private
    def room_type_params
    	params.require(:roomtype).permit(:name,:price,:description)
    end
end

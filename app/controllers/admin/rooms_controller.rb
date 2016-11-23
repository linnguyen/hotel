class Admin::RoomsController < ApplicationController
    def new
      @room=Room.new
      @room_type=Roomtype.all.collect{|r| [r.name,r.id]} 
    end
    def create
       @room=Room.new (room_params)
       if @room.save
       	flash[:success]="Room created successfully"
       	redirect_to admin_rooms_path
       else
       	render 'new'
       end
    end
    def index
    	@rooms=Room.paginate(page: params[:page],per_page: 4)
    end

    def edit
    	@room=Room.find_by(params[:id])
    end
    def update
    	@room=Room.find_by(params[:id])
    	if @room.update_attributes(room_params)
    		flash[:success]="Room update successfully"
    		redirect_to admin_rooms_path
    	else
    		render 'edit'
    	end
    end
    def destroy
      Room.find(params[:id]).destroy
      redirect_to admin_rooms_path
    end

    private
    def room_params
    	params.require(:room).permit(:room_code,:bed_quantity,:roomtype_id,:avatar)
    end
end

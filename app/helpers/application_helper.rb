module ApplicationHelper
	
	def hash_payment id
	  user=User.find_by_id(2)  
      hash_payment=Hash.new
       all_checkin=user.checkins
       all_checkin.each  do |checkin|
       hash_payment[:room_code]=checkin.lineitems.first.room_code
       hash_payment[:numberofperson]=3
       end     
    end
    def get_corresspond_lineitem id
        checkin=Checkin.find_by(id:id)
        checkin.lineitems.first
    end

    def get_corresspond_roomtype name
        room=Room.find_by(room_code:name)
        room.roomtype
    end

    def get_time_booking startdate,fromdate
        t=(fromdate - startdate)/3600
        t.to_i
    end
    def totalpay
    	
    end
     
end

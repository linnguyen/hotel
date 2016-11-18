class UsersController < ApplicationController
  def index
    	@users = User.paginate(page: params[:page])
    end

	def show
		@user=User.find(params[:id])
		@entries = @user.entries.paginate(page: params[:page])
	end

	def new
		@user=User.new
	end

	def create
		@user=User.new(user_params)
		if @user.save
			log_in @user
			flash[:success] ="Welcome to the Sample App!"
			redirect_to bookrooms_path
		else
			render 'new'
		end
	end

	def edit
		@user=User.find(params[:id])
	end

    def update
    	@user=User.find(params[:id])
    	if @user.update_attributes(user_params)
    		flash[:success]="Profile updated"
    		redirect_to @user
    	else
    		render 'edit'
    	end
    end

    def user_params
	  	params.require(:user).permit(:name,:email,:password,
	  		:password_confirmation)
	end

end

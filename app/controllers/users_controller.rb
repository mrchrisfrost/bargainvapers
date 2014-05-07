class UsersController < ApplicationController
	
	def show 
		@user = User.find(params[:id])
	end

	def new
		@user = User.new 
	end 

	def new1
	end

	def create 
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Account succesfully saved."
			redirect_to @user 
			# Handle a successful save. 
		else
			render 'new'
		end
	end 

	def index 
	end 

	private 

		def user_params
			params.require(:user).permit(:name, :email, :address, :state,
				:phone, :zipcode, :password, :password_confirmation)
		end
end

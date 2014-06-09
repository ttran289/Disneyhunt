class UsersController < ApplicationController
respond_to :json, :html

	def index
		@pictures = current_user.pictures.paginate(:page => params[:page], :per_page => 8)
		@badges = Badge.all
		respond_with @pictures
	end

	def new
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
		@pictures = @user.pictures.all
		
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Let the Hunt begin!!"
			session[:remember_token] = @user.id.to_s
			redirect_to users_path
		else
			flash[:failure] = "Please enter a real email address and an 8 digit password"
			render :new
		end
	end

	
	protected

		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
		end
end

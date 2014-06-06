class PicturesController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]
	def index
		@pictures = Picture.all
		@pictures = Picture.paginate(:page => params[:page], :per_page => 9)
		# @pictures = Picture.latitude
		# @pictures = Picture.longitude
	end

	# def all
	# 	@pictures = Picture.all.reverse.paginate(:page => params [:page], :per_page => 10)
	# end

	def show
		# @picture = Picture.find(params[:id])
		# @pictures = Picture.all
	end

	def new
		@picture = Picture.new
	end

	def edit

	end

	def create
		@picture = current_user.pictures.new(post_params)
		if @picture.save
			redirect_to users_path
		else
			render 'new'
		end
	end

	def update

	end

	def destroy
		Picture.find(params[:id]).destroy
		redirect_to users_path
	end


	private
		
		def post_params
			params.require(:picture).permit(:caption, :image, :badge_id)
		end

		def set_post
			@picture = Picture.find(params[:id])
		end
end

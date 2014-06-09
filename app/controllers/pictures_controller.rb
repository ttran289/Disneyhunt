class PicturesController < ApplicationController
	


	
	before_action :set_post, only: [:show, :edit, :update, :destroy]
	respond_to :json, :html
	def index
		@pictures = Picture.paginate(:page => params[:page], :per_page => 12)
		respond_with @pictures
		# @pictures = Picture.latitude
		# @pictures = Picture.longitude
	end

	# def all
	# 	@pictures = Picture.all.reverse.paginate(:page => params [:page], :per_page => 10)
	# end

	def show
		respond_with @pictures
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
			respond_to do |format|
	        format.html { redirect_to users_path }
	        format.json { render json: @picture, status: :created }
		    end
		else
			respond_to do |format|
	        format.html { render 'new' }
	        format.json { render json: @picture.errors, status: :unprocessable_entity }
		    end
		end
	end

	def update

	end

	def destroy

		Picture.find(params[:id]).destroy
		respond_to do |format|
	      format.html { redirect_to users_path }
	      format.json { render json: { head: :ok } }
		end
	end


	private
		
		def post_params
			params.require(:picture).permit(:caption, :image, :badge_id, :name)
		end

		def set_post
			@picture = Picture.find(params[:id])
		end
end

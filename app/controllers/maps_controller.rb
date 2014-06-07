class MapsController < ApplicationController
	def index
		@pictures = Picture.where("badge_id > 0" )

	end
	def show
	end
end

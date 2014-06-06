class MapsController < ApplicationController
	def index
		@pictures = Picture.all
	end
	def show
	end
end

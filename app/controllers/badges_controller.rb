class BadgesController < ApplicationController
respond_to :json, :html
  
  def index
  	@badges = Badge.all
  	@picture = Picture.new
  	respond_with @badges
  end
  
end

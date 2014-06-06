class BadgesController < ApplicationController
  def index
  	@badges = Badge.all
  	@picture = Picture.new
  	
  end
  
end

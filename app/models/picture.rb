class Picture < ActiveRecord::Base
has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	
	belongs_to :user
	belongs_to :badge
	before_post_process :load_exif

	validates_attachment_presence :image
	validates_attachment_content_type :image, :content_type => ['image/jpeg']
	def b_url(image_size)
		self.image.url(image_size).gsub("//s3.amazonaws.com/", "//s3-us-west-1.amazonaws.com/")
	end
	
	def load_exif

	  exif = EXIFR::JPEG.new(image.queued_for_write[:original].path)
	 
	  # return if exif.nil? or not exif.exif?
	  self.date = exif.date_time.to_date
	  self.latitude = exif.gps.latitude
	  self.longitude = exif.gps.longitude
	  rescue
	    false
	end


end

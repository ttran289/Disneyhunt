class Badge < ActiveRecord::Base
	has_many :pictures 
	has_many :users, through: :pictures
end

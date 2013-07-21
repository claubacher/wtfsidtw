class Concert < ActiveRecord::Base
	attr_accessible :kind, :artists, :location, :url
end

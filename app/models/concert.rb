class Concert < ActiveRecord::Base
	attr_accessible :kind, :artists, :location, :url

	def description
		self.kind + " @" + self.location + " featuring " + self.artists + ".  <a href=\"" + self.url + "\">Click Here to find out more.</a>"
	end

	def title
		self.artists 
	end

	def photo
		"http://upload.wikimedia.org/wikipedia/commons/4/4e/Justice_in_concert.jpg"
	end
end

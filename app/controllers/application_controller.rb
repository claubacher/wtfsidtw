class ApplicationController < ActionController::Base
  protect_from_forgery
	def index
	end

	def wtf
		idea = [Clusterfuck.new, Movie.new].sample
		render :partial => "wtf/testing", :locals => { :idea => idea }
	end
end

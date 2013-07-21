class ApplicationController < ActionController::Base
  protect_from_forgery
	def index
	end

	def wtf
		# idea = [Clusterfuck.new, Movie.all.sample].sample
    idea = [Movie.all.sample].sample
    if idea.class == Movie
      directions = "You should see "
      @trailer = idea.trailer
    elsif idea.class == Deal
      directions = "You should buy "
    end
		render :partial => "wtf/testing", :locals => { :idea => idea, :directions => directions }
	end
end

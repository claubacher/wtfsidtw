class ApplicationController < ActionController::Base
  protect_from_forgery
	def index
	end

	def wtf
		# idea = [Clusterfuck.new, Movie.all.sample].sample
    idea = [Movie.all.sample, Deal.all.sample, Concert.all.sample].sample
    if idea.class == Movie
      directions = "You should see "
      @trailer = idea.trailer if idea.trailer
      @link = idea.link
    elsif idea.class == Deal
      directions = "You should sign up for "
    elsif idea.class == Concert
      directions = "You should see "
    end
		render :partial => "wtf/testing", :locals => { :idea => idea, :directions => directions }
	end
end

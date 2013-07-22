class ApplicationController < ActionController::Base
  protect_from_forgery
	def index
	end

	def wtf
		# idea = [Clusterfuck.new, Movie.all.sample].sample
    idea = [Movie.all.sample, Deal.all.sample, Concert.all.sample].sample
    if idea.class == Movie
      puts idea.title
      directions = "You should see "
      @trailer = idea.trailer if idea.trailer
    elsif idea.class == Deal
      directions = "You should sign up for "
    end
		render :partial => "wtf/testing", :locals => { :idea => idea, :directions => directions }
	end
end

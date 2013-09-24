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

  def text
    @idea = [Movie.all.sample, Deal.all.sample, Concert.all.sample].sample
    if @idea.class == Movie
      @directions = "You should see "
    elsif @idea.class == Deal
      @directions = "You should sign up for "
    elsif @idea.class == Concert
      @directions = "You should see "
    end

    TWILIO_ACCOUNT_SID = ENV['TWILIO_ACCOUNT_SID']
    TWILIO_AUTH_TOKEN = ENV['TWILIO_AUTH_TOKEN']
    TWILIO_NUMBER = ENV['TWILIO_NUMBER']

    client = Twilio::REST::Client.new TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN

  #   response = Twilio::TwiML::Response.new do |r|
  #     r.Message do |m|
  #       m.Media = @idea.photo
  #       m.Body = "@{directions} #{@idea.title} #{idea.link}"
  #     end
  #   end

  #   content_type :xml
  #   response.text
  end
end

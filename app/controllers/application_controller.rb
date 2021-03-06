class ApplicationController < ActionController::Base
  protect_from_forgery

	def index
	end

	def wtf
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
    @from_number = params["From"]
  
    @idea = [Movie.all.sample, Deal.all.sample, Concert.all.sample].sample
    if @idea.class == Movie
      @directions = "You should see "
      @link = @idea.link
      @title = @idea.title
    elsif @idea.class == Deal
      @directions = "You should sign up for "
      @link = @idea.dealUrl
      @title = @idea.title
    elsif @idea.class == Concert
      @directions = "You should see "
      @link = @idea.url
      @title = @idea.title
      index = @title.index(',')
      @title = @title[0, index]
    end

    twilio_account_sid = ENV['TWILIO_ACCOUNT_SID']
    twilio_auth_token = ENV['TWILIO_AUTH_TOKEN']

    client = Twilio::REST::Client.new twilio_account_sid, twilio_auth_token

    client.account.messages.create(
      :from => '+18153454239',
      :to =>  @from_number,
      :body => "#{@directions}#{@title} #{@link}"
    )
  end
end

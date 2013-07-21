class Movie < ActiveRecord::Base
  attr_accessible :title, :mpaa_rating, :runtime, :critics_score, :audience_score, :poster, :cast, :link

  def description
    "Rating: " + mpaa_rating + "<br>" +
    "Runtime: " + runtime.to_s + "<br>" +
    "Critics' score: " + critics_score.to_s + "<br>" +
    "Audience score: " + audience_score.to_s + "<br>" +
    "Cast: " + cast + "<br>"
  end

  def link
    self.link
  end

  def trailer

  end

  def photo
    self.poster
  end

end

# class YoutubeVideo

#   def initialize(search_term)

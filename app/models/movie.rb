class Movie < ActiveRecord::Base
  attr_accessible :title, :mpaa_rating, :runtime, :critics_score, :audience_score, :poster, :cast, :link

  def description
    "Rating: " + mpaa_rating + "<br>" +
    "Runtime: " + runtime.to_s + " minutes" + "<br>" +
    "Critics' score: " + critics_score.to_s + "<br>" +
    "Audience score: " + audience_score.to_s + "<br>" +
    "Cast: " + cast + "<br>"
  end

  def trailer
    begin
      data = open('http://simpleapi.traileraddict.com/trailer/' + title.downcase.gsub(" ", "-") + '/trailer')
    rescue
      data = nil
    end
    data ? Hash.from_xml(data.read)["trailers"]["trailer"]["embed_standard"] : nil
  end

  def photo
    self.poster
  end
end

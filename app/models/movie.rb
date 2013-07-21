# class Movielist
#   attr_accessor :movies

#   def initialize(data)

#   end

#   def movie
#     num = rand(self.movies.length)
#     Movie.new(self.movies[num])
#   end
# end



class Movie
  attr_accessor :title, :mpaa_rating, :runtime, :critics_score, :audience_score, :poster, :cast, :link

  def initialize()
    rt = open('http://api.rottentomatoes.com/api/public/v1.0/lists/movies/in_theaters.json?apikey=vyfe6wm2adywqh6g6ge8trrt&page_limit=30')
    data = JSON.parse(rt.read)
    movie = data["movies"].sample
    self.title = movie["title"]
    self.mpaa_rating = movie["mpaa_rating"]
    self.runtime = movie["runtime"]
    self.critics_score = movie["ratings"]["critics_score"]
    self.audience_score = movie["ratings"]["audience_score"]
    self.poster = movie["posters"]["detailed"]
    self.cast = movie["abridged_cast"].map { |actor| actor["name"] }
    self.link = movie["links"]["alternate"]
    # self.trailer = YoutubeVideo.new(self.title + " trailer")
  end

  def description
    self.title + "<br>" +
    self.mpaa_rating + "<br>" +
    self.runtime.to_s + "<br>" +
    self.critics_score.to_s + "<br>" +
    self.audience_score.to_s + "<br>" +
    self.cast.join(", ") + "<br>"
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

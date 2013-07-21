class Movielist
  attr_accessor :movies

  def initialize()
    rt = open('http://api.rottentomatoes.com/api/public/v1.0/lists/movies/in_theaters.json?apikey='+ ENV['RT_KEY'] +'&page_limit=30')
    data = JSON.parse(rt.read)
    data["movies"].each do |movie|
      Movie.create(:title => movie["title"],
                   :mpaa_rating => movie["mpaa_rating"],
                   :runtime => movie["runtime"],
                   :critics_score => movie["ratings"]["critics_score"],
                   :audience_score => movie["ratings"]["audience_score"],
                   :poster => movie["posters"]["detailed"],
                   :cast => movie["abridged_cast"].map { |actor| actor["name"] }.join(", "))
    end
  end
end

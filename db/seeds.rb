Movielist.new

division_ids = open('http://api.groupon.com/v2/divisions.json?client_id=69481c71e6487f01ac963838804ee201cd5efcc9')
city_data = JSON.parse(division_ids.read)
city_ids = []
city_data['divisions'].each do |city|
  city_ids << city['id']
end

groupon = open('http://api.groupon.com/v2/deals.json?client_id=69481c71e6487f01ac963838804ee201cd5efcc9&division_id=chicago')

  data = JSON.parse(groupon.read)
  data['deals'].each do |deal|
    tags = deal['tags'].map(&:values).join(" ")
    if GROUPON_PARENT_TAGS.include? tags
      Deal.create(
      location: 'chicago',
      title: deal["title"],
      pitch_html: deal["pitchHtml"],
      deal_url: deal['dealUrl'],
      redemption_location: deal["redemptionLocation"],
      large_image_url: deal["largeImageUrl"].sub("https", "http")
      starts_at: deal["startAt"],
      deal_types: deal["dealTypes"],
      tags: deal['tags'].map(&:values).join(" "),
      option_array: deal["options"],
      announcement_title: deal['announcementTitle'],
      end_date: deal['endAt'])
      puts
      puts
      puts deal["largeImageUrl"]
      puts
      puts
    end
  end

songkick = open('http://api.songkick.com/api/3.0/metro_areas/9426/calendar.json?page=2&apikey=hZ2Fewy4geaBhLCS')
concerts = JSON.parse(songkick.read)
concerts['resultsPage']['results']['event'].each do |concert|
	Concert.create(:kind => concert['type'],
								 :artists => concert['performance'].map { |perf| perf['displayName'] }.join(', '),
								 :location => concert['venue']['displayName'] + ", " + concert['venue']['metroArea']['displayName'] + ", " + concert['venue']['metroArea']['state']['displayName'],
								 :url => concert['uri'])

end

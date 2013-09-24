Movielist.new

division_ids = open('http://api.groupon.com/v2/divisions.json?client_id=69481c71e6487f01ac963838804ee201cd5efcc9')
city_data = JSON.parse(division_ids.read)
city_ids = []
city_data['divisions'].each do |city|
  city_ids << city['id']
end

groupon = open('http://api.groupon.com/v2/deals.json?client_id=69481c71e6487f01ac963838804ee201cd5efcc9&division_id=san-francisco')

  data = JSON.parse(groupon.read)
  data['deals'].each do |deal|
    tags = deal['tags'].map(&:values).join(" ")
    if GROUPON_PARENT_TAGS.include? tags
      Deal.create(
      location: 'san-francisco',
      title: deal["title"],
      pitchHtml: deal["pitchHtml"],
      dealUrl: deal['dealUrl'],
      redemptionLocation: deal["redemptionLocation"],
      large_image_ur: deal["largeImageUrl"].sub("https", "http"),
      startsAt: deal["startAt"],
      dealTypes: deal["dealTypes"],
      tags: deal['tags'].map(&:values).join(" "),
      optionArray: deal["options"],
      announcementTitle: deal['announcementTitle'],
      endDate: deal['endAt'])
    end
  end

songkick = open('http://api.songkick.com/api/3.0/metro_areas/26330/calendar.json?&apikey=hZ2Fewy4geaBhLCS')
concerts = JSON.parse(songkick.read)
concerts['resultsPage']['results']['event'].each do |concert|
	Concert.create(:kind => concert['type'],
								 :artists => concert['performance'].map { |perf| perf['displayName'] }.join(', '),
								 :location => concert['venue']['displayName'] + ", " + concert['venue']['metroArea']['displayName'] + ", " + concert['venue']['metroArea']['state']['displayName'],
								 :url => concert['uri'])

end

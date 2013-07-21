division_ids = open('http://api.groupon.com/v2/divisions.json?client_id=69481c71e6487f01ac963838804ee201cd5efcc9')
city_data = JSON.parse(division_ids.read)
city_ids = []
city_data['divisions'].each do |city|
  city_ids << city['id']
end

city_ids.each do |city|
  groupon = open('http://api.groupon.com/v2/deals.json?client_id=69481c71e6487f01ac963838804ee201cd5efcc9&division_id='+city)
  data = JSON.parse(groupon.read)
  data['deals'].each { |deal| Deal.create(
    location: city,
    title: deal["title"],
    pitch_html: deal["pitchHtml"],
    deal_url: deal['dealUrl'],
    redemption_location: deal["redemptionLocation"],
    large_image_url: deal["merchant"],
    starts_at: deal["startAt"],
    deal_types: deal["dealTypes"],
    tags: deal["tags"],
    option_array: deal["options"],
    announcement_title: deal['announcementTitle'],
    end_date: deal['endAt'])}
  end


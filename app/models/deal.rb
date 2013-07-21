require 'json'
require 'open-uri'


class Deal
  attr_accessor :title, :pitch_html, :deal_url, :redemption_location, :website_url, :large_image_url, :starts_at, :deal_types, :tags, :price, :buy_url, :geolocation, :address, :start_date, :end_date, :option_array, :announcement_title
  attr_reader :data
  def initialize(deal)
    self.title = deal["title"]
    self.pitch_html = deal["pitchHtml"]
    self.deal_url = deal['dealUrl']
    self.redemption_location = deal["redemptionLocation"]
    # self.website_url = deal["merchant"]["ratings"]["websiteUrl"]
    self.large_image_url = deal["largeImageUrl"]
    self.starts_at = deal["startAt"]
    self.deal_types = deal["dealTypes"]
    self.tags = deal["tags"]
    self.option_array = []
    deal["options"].each do |option|
      self.option_array << [option["price"]["amount"], option["price"]["formattedAmount"],option["buyUrl"],option["redemptionLocations"], option['title']]
    end
    self.announcement_title = deal['announcementTitle']
    self.end_date = deal['endAt']
  end

end

# groupon = open('http://api.groupon.com/v2/deals.json?client_id=69481c71e6487f01ac963838804ee201cd5efcc9&division_id=chicago')
#     data = JSON.parse(groupon.read)
#     deal = data['deals'].sample

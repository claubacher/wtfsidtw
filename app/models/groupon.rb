class Deal
  attr_accessor :title, :pitch_html, :deal_url, :redemption_location, :website_url, :large_image_url, :starts_at, :deal_types, :tags, :price, :buy_url, :geolocation, :address, :start_date, :end_date
  

  def title
    self["title"]
  end
  
  def pitch_html
    self["pitchHtml"]
  end

  def deal_url
    self["dealURL"]
  end

  def redemption_location
    self["redemptionLocation"]
  end

  def website_url
    self["merchant[:ratings][:websiteUrl]"]
  end

  def large_image_url
    self["largeImageUrl"]
  end
  
  def starts_at
    self["starts_at"]
  end
 
  def deal_types
    self["dealTypes"]
  end

  def tags
    self["tags"]
  end

  def options
    self['options'].each do |option|
      option[:price][:amount]
      option[:price][:formattedAmount]
      option[:buyUrl]
      option[:redemptionLocations]
      option[:redemptionLocations]
    end
  end
  def announcement_title
    self['announcementTitle']
  end
  def end_date
    self['endAt']
  end
end

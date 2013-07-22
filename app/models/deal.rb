class Deal < ActiveRecord::Base
  attr_accessible :title, :pitch_html, :deal_url, :redemption_location, :website_url, :large_image_url, :starts_at, :deal_types, :tags, :price, :buy_url, :location, :geolocation, :address, :start_date, :end_date, :option_array, :announcement_title
  attr_reader :data

  def photo
    self.large_image_url
  end

  def description
    "<a href='#{deal_url}'>View this deal</a>"
  end
end


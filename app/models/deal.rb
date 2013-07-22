class Deal < ActiveRecord::Base
  attr_accessible :title, :pitchHtml, :dealUrl, :redemptionLocation, :websiteUrl, :largeImageUrl, :startsAt, :dealTypes, :tags, :price, :buyUrl, :location, :geolocation, :address, :startDate, :endDate, :optionArray, :announcementTitle
  attr_reader :data

  def photo
    self.large_image_url
  end

  def description
    "<a href='#{deal_url}'>View this deal</a>"
  end
end


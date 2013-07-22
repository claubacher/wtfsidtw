class Deal < ActiveRecord::Base
  attr_accessible :title, :pitchHtml, :dealUrl, :redemptionLocation, :websiteUrl, :large_image_ur, :startsAt, :dealTypes, :tags, :price, :buyUrl, :location, :geolocation, :address, :startDate, :endDate, :optionArray, :announcementTitle
  attr_reader :data

  def photo
    large_image_ur
  end

  def description
    "<a href='#{dealUrl}'>View this deal</a>"
  end
end


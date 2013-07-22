class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |deal|
      deal.string :location
      deal.string :title
      deal.text :pitchHtml
      deal.string :dealUrl
      deal.string :redemptionLocation
      deal.string :large_image_url
      deal.datetime :startsAt
      deal.text :dealTypes
      deal.text :tags
      deal.text :optionArray
      deal.string :announcementTitle
      deal.datetime :endDate
      deal.timestamps
    end
  end
end

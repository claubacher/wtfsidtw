class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |deal|
      deal.string :location
      deal.string :title
      deal.text :pitch_html
      deal.string :deal_url
      deal.string :redemption_location
      deal.string :large_image_url
      deal.datetime :starts_at
      deal.text :deal_types
      deal.text :tags
      deal.text :option_array
      deal.string :announcement_title
      deal.datetime :end_date
      deal.timestamps
    end
  end
end

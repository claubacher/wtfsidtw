# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130721225538) do

  create_table "concerts", :force => true do |t|
    t.string "kind"
    t.string "artists"
    t.string "location"
    t.text   "url"
  end

  create_table "deals", :force => true do |t|
    t.string   "location"
    t.string   "title"
    t.string   "pitch_html"
    t.string   "deal_url"
    t.string   "redemption_location"
    t.string   "large_image_url"
    t.datetime "starts_at"
    t.string   "deal_types"
    t.string   "tags"
    t.string   "option_array"
    t.string   "announcement_title"
    t.datetime "end_date"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.string   "mpaa_rating"
    t.integer  "runtime"
    t.integer  "critics_score"
    t.integer  "audience_score"
    t.string   "poster"
    t.string   "cast"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end

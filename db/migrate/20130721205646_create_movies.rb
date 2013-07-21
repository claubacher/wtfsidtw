class CreateMovies < ActiveRecord::Migration
  def create
    create_table :movies do |t|
      t.string :title
      t.string :mpaa_rating
      t.integer :runtime
      t.integer :critics_score
      t.integer :audience_score
      t.string :poster
      t.text :cast
      t.string :link

      t.timestamps
    end
  end
end

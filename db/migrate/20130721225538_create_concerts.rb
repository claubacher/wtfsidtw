class CreateConcerts < ActiveRecord::Migration
  def change
		create_table :concerts do |t|
			t.string :kind
			t.string :artists
			t.string :location
			t.text :url
		end
  end
end

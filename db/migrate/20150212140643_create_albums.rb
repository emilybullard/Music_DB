class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :genre_id
      t.integer :artist_id

      t.timestamps null: false
    end
  end
end

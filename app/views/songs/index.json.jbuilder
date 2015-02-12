json.array!(@songs) do |song|
  json.extract! song, :id, :name, :genre_id, :artist_id, :album_id
  json.url song_url(song, format: :json)
end

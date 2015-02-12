json.array!(@albums) do |album|
  json.extract! album, :id, :title, :genre_id, :artist_id
  json.url album_url(album, format: :json)
end

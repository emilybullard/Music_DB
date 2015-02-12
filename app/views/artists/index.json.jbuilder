json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :bio, :genre_id
  json.url artist_url(artist, format: :json)
end

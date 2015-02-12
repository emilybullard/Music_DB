json.array!(@genres) do |genre|
  json.extract! genre, :id, :type
  json.url genre_url(genre, format: :json)
end

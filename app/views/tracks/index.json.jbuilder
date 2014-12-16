json.array!(@tracks) do |track|
  json.extract! track, :id, :name, :user_id, :album_id, :image
  json.url track_url(track, format: :json)
end

json.array!(@games) do |game|
  json.extract! game, :id, :room, :max_players, :kind, :instance
  json.url game_url(game, format: :json)
end

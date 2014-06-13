json.array!(@games) do |game|
  json.extract! game, :id, :team_home, :team_visitor, :score_home, :score_visitor, :start_time, :is_over
  json.url game_url(game, format: :json)
end

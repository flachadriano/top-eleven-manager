json.array!(@players) do |player|
  json.extract! player, :id, :name, :tackling, :marking, :positioning, :heading, :bravery, :passing, :dribbling, :crossing, :shooting, :finishing, :fitness, :strength, :aggression, :speed, :creativity
  json.url player_url(player, format: :json)
end

json.array!(@clubs) do |club|
  json.extract! club, :id
  json.url club_url(club, format: :json)
end

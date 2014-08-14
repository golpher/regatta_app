json.array!(@boat_types) do |boat_type|
  json.extract! boat_type, :id
  json.url boat_type_url(boat_type, format: :json)
end

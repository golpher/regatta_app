json.array!(@boats) do |boat|
  json.extract! boat, :id
  json.url boat_url(boat, format: :json)
end

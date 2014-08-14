json.array!(@race_types) do |race_type|
  json.extract! race_type, :id
  json.url race_type_url(race_type, format: :json)
end

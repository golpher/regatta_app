json.array!(@sailors) do |sailor|
  json.extract! sailor, :id
  json.url sailor_url(sailor, format: :json)
end

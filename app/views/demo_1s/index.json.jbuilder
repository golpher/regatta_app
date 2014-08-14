json.array!(@demo_1s) do |demo_1|
  json.extract! demo_1, :id, :new_demo, :new_demo_1
  json.url demo_1_url(demo_1, format: :json)
end

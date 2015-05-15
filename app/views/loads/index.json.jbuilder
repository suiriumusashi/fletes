json.array!(@loads) do |load|
  json.extract! load, :id, :range
  json.url load_url(load, format: :json)
end

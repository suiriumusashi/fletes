json.array!(@trucks) do |truck|
  json.extract! truck, :id, :name
  json.url truck_url(truck, format: :json)
end

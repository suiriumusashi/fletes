json.array!(@competitors) do |competitor|
  json.extract! competitor, :id, :conform, :price, :users_id, :publications_id
  json.url competitor_url(competitor, format: :json)
end

json.array!(@publications) do |publication|
  json.extract! publication, :id, :title, :day_pickup, :time_pickup, :day_delivery, :time_delivery, :description, :estimated_price, :final_price, :status
  json.url publication_url(publication, format: :json)
end

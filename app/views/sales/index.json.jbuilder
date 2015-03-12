json.array!(@sales) do |sale|
  json.extract! sale, :id, :date_sale
  json.url sale_url(sale, format: :json)
end

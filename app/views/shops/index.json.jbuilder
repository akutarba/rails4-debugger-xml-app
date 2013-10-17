json.array!(@shops) do |shop|
  json.extract! shop, :title
  json.url shop_url(shop, format: :json)
end

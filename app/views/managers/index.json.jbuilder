json.array!(@managers) do |manager|
  json.extract! manager, :name
  json.url manager_url(manager, format: :json)
end

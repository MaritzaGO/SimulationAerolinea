json.array!(@cities) do |city|
  json.extract! city, :id, :name_city, :country
  json.url city_url(city, format: :json)
end

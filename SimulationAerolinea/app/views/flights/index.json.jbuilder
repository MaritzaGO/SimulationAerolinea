json.array!(@flights) do |flight|
  json.extract! flight, :id, :route_id, :airplane_id, :pilot_id, :date, :price
  json.url flight_url(flight, format: :json)
end

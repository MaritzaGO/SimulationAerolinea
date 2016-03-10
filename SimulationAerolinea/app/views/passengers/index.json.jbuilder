json.array!(@passengers) do |passenger|
  json.extract! passenger, :id, :name, :lastname, :identificacion, :edad
  json.url passenger_url(passenger, format: :json)
end

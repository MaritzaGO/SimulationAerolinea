json.array!(@pilots) do |pilot|
  json.extract! pilot, :id, :name, :lastname, :identificacion, :edad
  json.url pilot_url(pilot, format: :json)
end

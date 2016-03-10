json.array!(@airplanes) do |airplane|
  json.extract! airplane, :id, :reference, :state_airplane, :count_passengers
  json.url airplane_url(airplane, format: :json)
end

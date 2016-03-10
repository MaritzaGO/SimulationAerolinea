json.array!(@aviones) do |avione|
  json.extract! avione, :id, :codigo, :marca, :estadoavion, :totalpasajeros, :ruta_asignada, :identificacion_piloto, :nombre_piloto
  json.url avione_url(avione, format: :json)
end

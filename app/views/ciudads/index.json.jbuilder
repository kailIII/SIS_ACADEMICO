json.array!(@ciudads) do |ciudad|
  json.extract! ciudad, :id, :nombre_ciu
  json.url ciudad_url(ciudad, format: :json)
end

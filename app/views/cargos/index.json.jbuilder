json.array!(@cargos) do |cargo|
  json.extract! cargo, :id, :descripcion_carg
  json.url cargo_url(cargo, format: :json)
end

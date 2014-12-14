json.array!(@universidads) do |universidad|
  json.extract! universidad, :id, :nombre_uni, :direccion_uni, :telefono_uni, :web_uni
  json.url universidad_url(universidad, format: :json)
end

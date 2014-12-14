json.array!(@facultads) do |facultad|
  json.extract! facultad, :id, :nombre_facu, :direccion_facu, :telefono_facu, :email_facu
  json.url facultad_url(facultad, format: :json)
end

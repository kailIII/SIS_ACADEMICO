json.array!(@carreras) do |carrera|
  json.extract! carrera, :id, :nombre_carr, :duracion_carr, :titulo_obt_carr
  json.url carrera_url(carrera, format: :json)
end

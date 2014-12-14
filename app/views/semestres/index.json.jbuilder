json.array!(@semestres) do |semestre|
  json.extract! semestre, :id, :descripcion_sem, :nro_sem
  json.url semestre_url(semestre, format: :json)
end

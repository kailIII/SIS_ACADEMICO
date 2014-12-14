json.array!(@facu_carreras) do |facu_carrera|
  json.extract! facu_carrera, :id, :carrera_id, :facultad_id
  json.url facu_carrera_url(facu_carrera, format: :json)
end

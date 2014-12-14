json.array!(@sedes) do |sede|
  json.extract! sede, :id, :ciudad_id, :facu_carrera_id, :universidad_id
  json.url sede_url(sede, format: :json)
end

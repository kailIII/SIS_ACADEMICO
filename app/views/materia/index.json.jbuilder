json.array!(@materia) do |materium|
  json.extract! materium, :id, :cod_mat, :nombre_mat, :alias_mat, :hs_mat, :contenido_mat
  json.url materium_url(materium, format: :json)
end

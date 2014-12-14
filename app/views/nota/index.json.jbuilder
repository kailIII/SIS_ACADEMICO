json.array!(@nota) do |notum|
  json.extract! notum, :id, :nro_nota, :letra_nota
  json.url notum_url(notum, format: :json)
end

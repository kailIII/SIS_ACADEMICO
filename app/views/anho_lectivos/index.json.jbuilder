json.array!(@anho_lectivos) do |anho_lectivo|
  json.extract! anho_lectivo, :id, :anho_lect
  json.url anho_lectivo_url(anho_lectivo, format: :json)
end

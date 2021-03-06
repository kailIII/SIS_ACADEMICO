json.array!(@docentes) do |docente|
  json.extract! docente, :id, :ci_doc, :nombre_doc, :apellido_doc, :fnac_doc, :lnac_doc, :direccion_doc, :telefono_doc, :celular_doc, :email_doc, :est_civil_doc, :genero_doc, :nacionalidad_doc, :especialidad_doc
  json.url docente_url(docente, format: :json)
end

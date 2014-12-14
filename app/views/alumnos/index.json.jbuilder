json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :ci_alu, :nombres_alu, :apellidos_alu, :fnac_alu, :lnac_alu, :direccion_alu, :telefono_alu, :celular_alu, :email_alu, :est_civil_alu, :genero_alu, :nacionalidad_alu, :procedencia_alu
  json.url alumno_url(alumno, format: :json)
end

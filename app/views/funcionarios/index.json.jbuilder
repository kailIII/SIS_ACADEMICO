json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :ci_fun, :nombres_fun, :apellidos_fun, :fnac_fun, :lnac_fun, :direccion_fun, :telefono_fun, :celular_fun, :email_fun, :est_civil_fun, :genero_fun, :nacionalidad_fun, :especialidad_fun
  json.url funcionario_url(funcionario, format: :json)
end

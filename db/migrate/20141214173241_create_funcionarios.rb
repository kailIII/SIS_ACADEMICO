class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :ci_fun
      t.string :nombres_fun
      t.string :apellidos_fun
      t.datetime :fnac_fun
      t.string :lnac_fun
      t.text :direccion_fun
      t.string :telefono_fun
      t.string :celular_fun
      t.string :email_fun
      t.string :est_civil_fun
      t.string :genero_fun
      t.string :nacionalidad_fun
      t.string :especialidad_fun

      t.timestamps
    end
  end
end

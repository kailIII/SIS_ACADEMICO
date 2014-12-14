class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :ci_alu
      t.string :nombres_alu
      t.string :apellidos_alu
      t.datetime :fnac_alu
      t.string :lnac_alu
      t.string :direccion_alu
      t.string :telefono_alu
      t.string :celular_alu
      t.string :email_alu
      t.string :est_civil_alu
      t.string :genero_alu
      t.string :nacionalidad_alu
      t.string :procedencia_alu

      t.timestamps
    end
  end
end

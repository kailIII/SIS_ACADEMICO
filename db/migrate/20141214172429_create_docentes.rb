class CreateDocentes < ActiveRecord::Migration
  def change
    create_table :docentes do |t|
      t.string :ci_doc
      t.string :nombre_doc
      t.string :apellido_doc
      t.datetime :fnac_doc
      t.string :lnac_doc
      t.text :direccion_doc
      t.string :telefono_doc
      t.string :celular_doc
      t.string :email_doc
      t.string :est_civil_doc
      t.string :genero_doc
      t.string :nacionalidad_doc
      t.text :especialidad_doc

      t.timestamps
    end
  end
end

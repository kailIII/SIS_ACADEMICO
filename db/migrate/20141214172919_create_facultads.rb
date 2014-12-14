class CreateFacultads < ActiveRecord::Migration
  def change
    create_table :facultads do |t|
      t.string :nombre_facu
      t.text :direccion_facu
      t.string :telefono_facu
      t.string :email_facu

      t.timestamps
    end
  end
end

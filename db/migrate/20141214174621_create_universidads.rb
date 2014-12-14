class CreateUniversidads < ActiveRecord::Migration
  def change
    create_table :universidads do |t|
      t.string :nombre_uni
      t.text :direccion_uni
      t.string :telefono_uni
      t.string :web_uni

      t.timestamps
    end
  end
end

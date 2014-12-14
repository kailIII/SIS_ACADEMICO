class CreateMateria < ActiveRecord::Migration
  def change
    create_table :materia do |t|
      t.string :cod_mat
      t.string :nombre_mat
      t.string :alias_mat
      t.integer :hs_mat
      t.text :contenido_mat

      t.timestamps
    end
  end
end

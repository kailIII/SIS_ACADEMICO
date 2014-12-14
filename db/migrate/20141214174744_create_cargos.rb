class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.string :descripcion_carg

      t.timestamps
    end
  end
end

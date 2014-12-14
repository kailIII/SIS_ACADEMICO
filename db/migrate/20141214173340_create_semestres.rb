class CreateSemestres < ActiveRecord::Migration
  def change
    create_table :semestres do |t|
      t.string :descripcion_sem
      t.integer :nro_sem

      t.timestamps
    end
  end
end

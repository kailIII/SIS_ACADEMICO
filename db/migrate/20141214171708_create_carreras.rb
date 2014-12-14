class CreateCarreras < ActiveRecord::Migration
  def change
    create_table :carreras do |t|
      t.string :nombre_carr
      t.integer :duracion_carr
      t.string :titulo_obt_carr

      t.timestamps
    end
  end
end

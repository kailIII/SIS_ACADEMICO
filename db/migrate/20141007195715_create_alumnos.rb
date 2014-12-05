class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :ci
      t.string :nombres
      t.string :apellidos
      t.date :fecha_nacimiento
      t.string :lugar_nacimiento
      t.text :direccion
      t.string :telefono
      t.string :celular
      t.string :email
      t.integer :estado_civil

      t.timestamps
    end
  end
end

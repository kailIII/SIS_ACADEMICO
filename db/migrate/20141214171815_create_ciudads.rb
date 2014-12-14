class CreateCiudads < ActiveRecord::Migration
  def change
    create_table :ciudads do |t|
      t.string :nombre_ciu

      t.timestamps
    end
  end
end

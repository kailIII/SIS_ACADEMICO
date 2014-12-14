class CreateFacuCarreras < ActiveRecord::Migration
  def change
    create_table :facu_carreras do |t|
      t.references :carrera, index: true
      t.references :facultad, index: true

      t.timestamps
    end
  end
end

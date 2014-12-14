class CreateSedes < ActiveRecord::Migration
  def change
    create_table :sedes do |t|
      t.references :ciudad, index: true
      t.references :facu_carrera, index: true
      t.references :universidad, index: true

      t.timestamps
    end
  end
end

class CreateAnhoLectivos < ActiveRecord::Migration
  def change
    create_table :anho_lectivos do |t|
      t.integer :anho_lect

      t.timestamps
    end
  end
end

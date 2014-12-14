class CreateNota < ActiveRecord::Migration
  def change
    create_table :nota do |t|
      t.string :nro_nota
      t.string :letra_nota

      t.timestamps
    end
  end
end

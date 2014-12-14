class Cargo < ActiveRecord::Base
  
  #self.table_name = "CARGOS_UNI" para sobreescribir el nombre de la tabla
  validates :descripcion_carg, presence: true
  
end

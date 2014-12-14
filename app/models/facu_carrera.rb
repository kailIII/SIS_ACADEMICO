class FacuCarrera < ActiveRecord::Base
  belongs_to :carrera
  belongs_to :facultad
end

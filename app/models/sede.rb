class Sede < ActiveRecord::Base
  belongs_to :ciudad
  belongs_to :facu_carrera
  belongs_to :universidad
end

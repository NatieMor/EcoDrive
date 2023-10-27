class Carracteristica < ApplicationRecord
  has_and_belongs_to_many :baterium
  has_and_belongs_to_many :auto
  has_and_belongs_to_many :carga
  has_and_belongs_to_many :tecnologium
end

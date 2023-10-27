class Auto < ApplicationRecord
  belongs_to :marca
  has_and_belongs_to_many :carracteristica
  validates :modelo_de_auto, presence: true
  include PgSearch::Model
  pg_search_scope :search_full_text,
  against: {
  Precio_por_dia: 'A', 
  modelo_de_auto: 'B',
  }
end

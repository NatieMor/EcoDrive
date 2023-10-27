class Auto < ApplicationRecord
  belongs_to :marca
  has_and_belongs_to_many :carracteristica
  validates :modelo_de_auto, presence: true
  accepts_nested_attributes_for :autos, allow_destroy: true
end

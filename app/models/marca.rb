class Marca < ApplicationRecord
    has_many :autos, dependent: :destroy
end

class PlantGroup < ApplicationRecord
    has_many :plant_types
    validates :name, presence: true
end

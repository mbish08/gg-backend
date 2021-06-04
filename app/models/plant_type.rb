class PlantType < ApplicationRecord
  belongs_to :plant_group
  validates :name, presence: true
end

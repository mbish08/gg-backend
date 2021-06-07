class PlantGroupSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :plant_types
end

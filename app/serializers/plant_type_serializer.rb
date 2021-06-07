class PlantTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :fert_type, :fert_sched, :water, :soil_ph, :soil_type, :misc_info, :plant_group_id
end
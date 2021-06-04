class CreatePlantTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :plant_types do |t|
      t.string :name
      t.text :fert_type
      t.text :fert_sched
      t.text :water
      t.string :soil_ph
      t.text :soil_type
      t.text :misc_info
      t.belongs_to :PlantGroup, null: false, foreign_key: true

      t.timestamps
    end
  end
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# group seeds
roses = PlantGroup.create(name: 'Roses')
vegetables = PlantGroup.create(name: 'Vegetables')
palms = PlantGroup.create(name: 'Palms')

# type seeds
hotcocoa = PlantType.create(name: 'Hot Cocoa', fert_type: 'Dr Q Rose', water: 'when dry', misc_info: 'deadhead when needed', plant_group_id: roses.id)
mrlincoln = PlantType.create(name: 'Mr Lincoln', fert_type: 'Dr Q Rose', fert_sched: 'weekly', water: 'lots', misc_info: 'burns with too much sun', plant_group_id: roses.id)
zuchinni = PlantType.create(name: 'Zuchinni', water: '2x day', soil_ph: 'neutral', soil_type: 'vegetable mix', misc_info: 'deadhead when needed', plant_group_id: vegetables.id)


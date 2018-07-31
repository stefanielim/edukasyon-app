# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dada = Course.create!(name: "Defense Against the Dark Arts")
potions = Course.create!(name: "Intro to Potions")
creatures = Course.create!(name: "Dragons and Hippogriffs")

lupin = Professor.create!(name: "Remus Lupin")
snape = Professor.create!(name: "Severus Snape")
hagrid = Professor.create!(name: "Rubeus Hagrid")

dada.professors << lupin
dada.professors << snape
potions.professors << snape
creatures.professors << hagrid

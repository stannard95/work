# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create!(title: "Star Wars", desc: "A space film", age_r: 12)
Movie.create!(title: "Star Wars 1", desc: "A space film 1", age_r: 12)
Movie.create!(title: "Star Wars 2", desc: "A space film 2", age_r: 12)

puts "Finished seed..."


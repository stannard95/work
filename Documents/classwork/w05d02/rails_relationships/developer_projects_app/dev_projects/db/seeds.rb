# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p1 = Project.create!(title: "inventory app")
p2 = Project.create!(title: "sparta website")
p3 = Project.create!(title: "profiles app")

d1 = Developer.create!(name: "Niall Wallace", age: 25)
d2 = Developer.create!(name: "Ollie Holden", age: 92)

DeveloperProject.create!(developer_id: d1.id, project_id: p2.id)
DeveloperProject.create!(developer_id: d2.id, project_id: p2.id)
DeveloperProject.create!(developer_id: d1.id, project_id: p3.id)

puts "Finished Seed..."
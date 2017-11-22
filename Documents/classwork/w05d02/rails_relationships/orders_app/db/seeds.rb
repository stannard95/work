# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
c1 = Customer.create!(name: "Keir Stannard", age: 22)
c2 = Customer.create!(name: "Tim Bob", age: 120)

Order.create!(order_total: 300, address: "Some address.. doesn't matter", customer_id: c1.id)
Order.create!(order_total: 30, address: "Some address thing", customer_id: c2.id)
Order.create!(order_total: 240, address: "Bamn damn", customer_id: c2.id)
Order.create!(order_total: 370, address: "Thing ding", customer_id: c2.id)
Order.create!(order_total: 110, address: "Some address.. doesn't matter", customer_id: c1.id)

puts "Finished Seeding..."
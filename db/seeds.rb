# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroy DB"
User.destroy_all
Member.destroy_all
User.create!(email: "tarcea@sisi.com", password: "123456", first_name: "Gheorghe", last_name: "Tarcea")
puts "Creating members"
Member.create!(first_name: "Gheorghe", last_name: "Tarcea", domain: "ICT")
Member.create!(first_name: "Ion", last_name: "Dolanescu", domain: "3F")
puts "Done!!!"

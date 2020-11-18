# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0614246610", category: "french" }
caquant = { name: "Caquant", address: "3' rue du bon pasteur", phone_number: "061427610", category: "japanese" }
grolo = { name: "Grolo", address: "7 place rep", phone_number: "0614846610", category: "italian" }
bidul = { name: "Bidul", address: "7 avenue JA", phone_number: "0604246610", category: "italian" }
francois = { name: "Francois", address: "7 rue de la taule", phone_number: "0614946610", category: "belgian" }

[dishoom, caquant, grolo, bidul, francois].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'Indian', phone_number: '020-7420-9320' }
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'Italian', phone_number: '020-3759-4713'}
nandos = { name: "Nandos", address: "1A Romford Rd, London E15 4LJ", category: 'South African', phone_number: '020-8981-9867'}
bella_italia = { name: "Bella Italia", address: "Unit 30, London E6 7ER", category: 'Italian', phone_number: '020-3004-6684' }
bari_bari = { name: "Bari Bari", address: "24 White Church Ln, London E1 7QR", category: 'Korean', phone_number: '020-3759-4713'}

[dishoom, pizza_east, nandos, bella_italia, bari_bari].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

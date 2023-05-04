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
mcdonalds = {name: "McDonalds", address: "Tottenham Court Road", category: "french"}
wingstop = {name: "Wingstop", address: "Leicester Square", category: "chinese"}
burgerking = {name: "Burger King", address: "Tottenham Court Road", category: "belgian"}
monmouthkitchen = {name: "Monmouth Kitchen", address: "Covent Garden", category: "italian"}
koreanstar = {name: "Korean Star", address: "Tottenham Court Road", category: "japanese"}

[mcdonalds, wingstop, burgerking, monmouthkitchen, koreanstar].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

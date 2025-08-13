# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "Epicure", address: "75008 Paris", category: "french")
puts "Created Epicure"
Restaurant.create!(name: "Kobe", address: "Ruiterij 1 Maastricht", category: "japanese")
puts "Created Kobe"
Restaurant.create!(name: "Witloof", address: "Sint Bernardusstraat 12, 6211 HL Maastricht", category: "belgian")
puts "Created Witloof"


# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."

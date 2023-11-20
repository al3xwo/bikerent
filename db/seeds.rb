# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# ENCRYPTED PASSWORD MISSING!!!!!
User.create(first_name: "Katerina", last_name: "Mastrogianni", email: "user1@example.com", encrypted_password: "")
User.create(first_name: "Alexander", last_name: "Wojdynski", email: "user2@example.com", encrypted_password: "")
User.create(first_name: "Ehiaghe", last_name: "Aisiri", email: "user3@example.com", encrypted_password: "")
User.create(first_name: "Julia", last_name: "Kleber", email: "user4@example.com", encrypted_password: "")
User.create(first_name: "Bilal", last_name: "Can Sinaci", email: "user5@example.com", encrypted_password: "")
User.create(first_name: "Elena", last_name: "Voda", email: "user6@example.com", encrypted_password: "")
User.create(first_name: "Natalia", last_name: "Quintero", email: "user7@example.com", encrypted_password: "")
User.create(first_name: "Flor", last_name: "Salvadeo", email: "user8@example.com", encrypted_password: "")
User.create(first_name: "Karl", last_name: "von der Eltz", email: "user9@example.com", encrypted_password: "")
User.create(first_name: "David", last_name: "Julian", email: "user10@example.com", encrypted_password: "")

10.times do |i|
  Bike.create!(
    name: "Bike #{i + 1}",
    price: rand(200.0..1000.0).round(2),
    description: "Description for Bike #{i + 1}",
    category: ["All Bikes", "E-Bikes"].sample,
    location: "Location #{i + 1}"
  )
end

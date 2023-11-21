# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(first_name: "Katerina", last_name: "Mastrogianni", email: "user1@example.com", password: "123456", password_confirmation: "123456")
User.create(first_name: "Alexander", last_name: "Wojdynski", email: "user2@example.com", password: "123456", password_confirmation: "123456")
User.create(first_name: "Ehiaghe", last_name: "Aisiri", email: "user3@example.com", password: "123456", password_confirmation: "123456")
User.create(first_name: "Julia", last_name: "Kleber", email: "user4@example.com", password: "123456", password_confirmation: "123456")
User.create(first_name: "Bilal", last_name: "Can Sinaci", email: "user5@example.com", password: "123456", password_confirmation: "123456")
User.create(first_name: "Elena", last_name: "Voda", email: "user6@example.com", password: "123456", password_confirmation: "123456")
User.create(first_name: "Natalia", last_name: "Quintero", email: "user7@example.com", password: "123456", password_confirmation: "123456")
User.create(first_name: "Flor", last_name: "Salvadeo", email: "user8@example.com", password: "123456", password_confirmation: "123456")
User.create(first_name: "Karl", last_name: "von der Eltz", email: "user9@example.com", password: "123456", password_confirmation: "123456")
User.create(first_name: "David", last_name: "Julian", email: "user10@example.com", password: "123456", password_confirmation: "123456")

Bike.create!(name: "Bike1", price: "20€ per month", description: "Size:29inch,Color:Red,Battery:100Km", category: "E-Bike", location: "Cologne")
Bike.create!(name: "Bike2", price: "18€ per month", description: "Size:27inch,Color:Black,Battery:70Km", category: "E-Bike", location: "Berlin")
Bike.create!(name: "Bike3", price: "15€ per month", description: "Size:28inch,Color:Blue,Brakes:Disc", category: "City Bike", location: "Cologne")
Bike.create!(name: "Bike4", price: "13€ per month", description: "Size:27inch,Color:White,Battery:50Km", category: "E-Bike", location: "Frankfurt")
Bike.create!(name: "Bike5", price: "12€ per month", description: "Size:29inch,Color:Yellow,Battery:45Km", category: "E-Bike", location: "Bonn")
Bike.create!(name: "Bike6", price: "12€ per month", description: "Size:27inch,Color:White,Brakes:Hydraulic", category: "City Bike", location: "Berlin")
Bike.create!(name: "Bike7", price: "10€ per month", description: "Size:27inch,Color:Blue,Battery:30Km", category: "E-Bike", location: "Essen")
Bike.create!(name: "Bike8", price: "10€ per month", description: "Size:25inch,Color:Black,Brakes:Disc", category: "City Bike", location: "Frankfurt")
Bike.create!(name: "Bike9", price: "8€ per month", description: "Size:29inch,Color:Red,Brakes:Disc", category: "City Bike", location: "Essen")
Bike.create!(name: "Bike10", price: "8€ per month", description: "Size:27inch,Color:Green,Brakes:Hydraulic", category: "City Bike", location: "Bonn")

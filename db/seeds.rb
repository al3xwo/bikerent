Bike.destroy_all
User.destroy_all

users = []

user = User.create(first_name: "Katerina", last_name: "Mastrogianni", email: "user1@example.com", password: "123456", password_confirmation: "123456")
users << user
user = User.create(first_name: "Alexander", last_name: "Wojdynski", email: "user2@example.com", password: "123456", password_confirmation: "123456")
users << user
user = User.create(first_name: "Ehiaghe", last_name: "Aisiri", email: "user3@example.com", password: "123456", password_confirmation: "123456")
users << user
user = User.create(first_name: "Julia", last_name: "Kleber", email: "user4@example.com", password: "123456", password_confirmation: "123456")
users << user
user = User.create(first_name: "Bilal", last_name: "Can Sinaci", email: "user5@example.com", password: "123456", password_confirmation: "123456")
users << user
user = User.create(first_name: "Elena", last_name: "Voda", email: "user6@example.com", password: "123456", password_confirmation: "123456")
users << user
user = User.create(first_name: "Natalia", last_name: "Quintero", email: "user7@example.com", password: "123456", password_confirmation: "123456")
users << user
user = User.create(first_name: "Flor", last_name: "Salvadeo", email: "user8@example.com", password: "123456", password_confirmation: "123456")
users << user
user = User.create(first_name: "Karl", last_name: "von der Eltz", email: "user9@example.com", password: "123456", password_confirmation: "123456")
users << user
user = User.create(first_name: "David", last_name: "Julian", email: "user10@example.com", password: "123456", password_confirmation: "123456")
users << user

Bike.create!(name: "Bike1", user_id: users[0].id, price: "20€ per month", description: "Size:29inch,Color:Red,Battery:100Km", category: "E-Bike", location: "Cologne")
Bike.create!(name: "Bike2", user_id: users[1].id, price: "18€ per month", description: "Size:27inch,Color:Black,Battery:70Km", category: "E-Bike", location: "Berlin")
Bike.create!(name: "Bike3", user_id: users[2].id, price: "15€ per month", description: "Size:28inch,Color:Blue,Brakes:Disc", category: "City Bike", location: "Cologne")
Bike.create!(name: "Bike4", user_id: users[3].id, price: "13€ per month", description: "Size:27inch,Color:White,Battery:50Km", category: "E-Bike", location: "Frankfurt")
Bike.create!(name: "Bike5", user_id: users[4].id, price: "12€ per month", description: "Size:29inch,Color:Yellow,Battery:45Km", category: "E-Bike", location: "Bonn")
Bike.create!(name: "Bike6", user_id: users[5].id, price: "12€ per month", description: "Size:27inch,Color:White,Brakes:Hydraulic", category: "City Bike", location: "Berlin")
Bike.create!(name: "Bike7", user_id: users[6].id, price: "10€ per month", description: "Size:27inch,Color:Blue,Battery:30Km", category: "E-Bike", location: "Essen")
Bike.create!(name: "Bike8", user_id: users[7].id, price: "10€ per month", description: "Size:25inch,Color:Black,Brakes:Disc", category: "City Bike", location: "Frankfurt")
Bike.create!(name: "Bike9", user_id: users[8].id, price: "8€ per month", description: "Size:29inch,Color:Red,Brakes:Disc", category: "City Bike", location: "Essen")
Bike.create!(name: "Bike10", user_id: users[9].id, price: "8€ per month", description: "Size:27inch,Color:Green,Brakes:Hydraulic", category: "City Bike", location: "Bonn")
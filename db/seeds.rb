Booking.destroy_all
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

bike = Bike.new(name: "Topas Grande Finale", user_id: users[0].id, price: 1, description: "Size:29inch,Color:Red,Battery:100Km", category: "City", location: "Cologne")
file = File.open(File.join(Rails.root, "app/assets/images/bike1.jpg"))
bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bike.save
bike = Bike.new(name: "Cityzen 140 LTD RT", user_id: users[1].id, price: 2, description: "Size:27inch,Color:Black,Battery:70Km", category: "City", location: "Berlin")
file = File.open(File.join(Rails.root, "app/assets/images/bike2.jpg"))
bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bike.save
bike = Bike.new(name: "Fantasy Classic", user_id: users[2].id, price: 1, description: "Size:28inch,Color:Blue,Brakes:Disc", category: "City", location: "Cologne")
file = File.open(File.join(Rails.root, "app/assets/images/bike3.jpg"))
bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bike.save
bike = Bike.new(name: "Raise RT5", user_id: users[3].id, price: 2, description: "Size:27inch,Color:White,Battery:50Km", category: "City", location: "Frankfurt")
file = File.open(File.join(Rails.root, "app/assets/images/bike4.jpg"))
bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bike.save
bike = Bike.new(name: "Vitesse D8", user_id: users[4].id, price: 1, description: "Size:29inch,Color:Yellow,Battery:45Km", category: "City", location: "Bonn")
file = File.open(File.join(Rails.root, "app/assets/images/bike5.jpg"))
bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bike.save
bike = Bike.new(name: "Vitesse D8", user_id: users[5].id, price: 2, description: "Size:27inch,Color:White,Brakes:Hydraulic", category: "City", location: "Berlin")
file = File.open(File.join(Rails.root, "app/assets/images/bike6.jpg"))
bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bike.save
bike = Bike.new(name: "Valencia R7", user_id: users[6].id, price: 1, description: "Size:27inch,Color:Blue,Battery:30Km", category: "City", location: "Essen")
file = File.open(File.join(Rails.root, "app/assets/images/bike7.jpg"))
bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bike.save
bike = Bike.new(name: "Gotour3 Comfort ⚡ ", user_id: users[7].id, price: 2, description: "Size:25inch,Color:Black,Brakes:Disc", category: "Electric", location: "Frankfurt")
file = File.open(File.join(Rails.root, "app/assets/images/bike8.jpg"))
bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bike.save
bike = Bike.new(name: "E-Teru Y Universal⚡", user_id: users[8].id, price: 1, description: "Size:29inch,Color:Red,Brakes:Disc", category: "Electric", location: "Essen")
file = File.open(File.join(Rails.root, "app/assets/images/bike9.jpg"))
bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bike.save
bike = Bike.new(name: "Touring Hybrid-500 ⚡", user_id: users[9].id, price: 2, description: "Size:27inch,Color:Green,Brakes:Hydraulic", category: "Electric", location: "Bonn")
file = File.open(File.join(Rails.root, "app/assets/images/bike10.jpg"))
bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bike.save

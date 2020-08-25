require "faker"

# puts "Cleaning database..."
# something.destroy_all

puts "Creating a user"
user1 = User.create!(
  email: "hackenbroich.nina@gmail.com",
  first_name:"Nina",
  last_name: "Hackenbroich",
  password: "123456",
  )

puts "Creating a user"
user2 = User.create!(
  email: "triggiano.r@gmail.com",
  first_name:"Raffaele",
  last_name: "Triggiano",
  password: "123456",
  )

puts "Creating a user"
user3 = User.create!(
  email: "chambre.celine@gmail.com",
  first_name:"Celine",
  last_name: "Chambre",
  password: "123456",
  )

puts "Creating a user"
user4 = User.create!(
  email: "kimberly.dohmen@web.de",
  first_name:"Kim",
  last_name: "Dohmen",
  password: "123456",
  )

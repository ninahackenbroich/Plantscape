require "faker"

puts "Cleaning database..."
# User.destroy_all
Plant.destroy_all

# puts "Creating a user"
# user1 = User.create!(
#   email: "hackenbroich.nina@gmail.com",
#   first_name:"Nina",
#   last_name: "Hackenbroich",
#   password: "123456",
#   admin: true,
#   )

# puts "Creating a user"
# user2 = User.create!(
#   email: "triggiano.r@gmail.com",
#   first_name:"Raffaele",
#   last_name: "Triggiano",
#   password: "123456",
#   admin: true,
#   )

# puts "Creating a user"
# user3 = User.create!(
#   email: "chambre.celine@gmail.com",
#   first_name:"Celine",
#   last_name: "Chambre",
#   password: "123456",
#   admin: true,
#   )

# puts "Creating a user"
# user4 = User.create!(
#   email: "kimberly.dohmen@web.de",
#   first_name:"Kim",
#   last_name: "Dohmen",
#   password: "123456",
#   )



puts "Creating plants"
plant1 = Plant.create!(
  name: "Monstera",
  water: "Every day",
  light: "Direct light",
  soil: "Sand",
  fertilizer: "Spring-Summer: Once every 2 weeks",
  repotting: "Every 12 to 18 months: Repotting in a bigger pot",
  )
  image_plant = File.open("Monstera_1.jpeg")
  plant1.photo.attach(io: image_plant, filename: 'image.jpeg', content_type: 'image/jpeg')

puts "Creating plants"
plant2 = Plant.create!(
  name: "Ficus Elastica",
  water: "Once per week",
  light: "Shadow is better",
  soil: "Silt",
  fertilizer: "Spring-Summer: Once every week",
  repotting: "Every 8 to 12 months: It likes medium pots",
  )
  image_plant = File.open("Ficus_1.jpeg")
  plant.photo.attach(io: image_plant, filename: 'image.jpeg', content_type: 'image/jpeg')

puts "Creating plants"
plant3 = Plant.create!(
  name: "Snake Plant",
  water: "Rare",
  light: "Everywhere",
  soil: "Clay",
  fertilizer: "Whole Year: Once every month",
  repotting: "Avoid repotting",
  )
  image_plant = File.open("Snakeplant_1.jpeg")
  plant.photo.attach(io: image_plant, filename: 'image.jpeg', content_type: 'image/jpeg')

puts "Creating plants"
plant4 = Plant.create!(
  name: "Marble",
  water: "Rare",
  light: "Everywhere",
  soil: "Clay",
  fertilizer: "Whole Year: Once every month",
  repotting: "Avoid repotting",
  )
  image_plant = File.open("Hangingplant_1.jpeg")
  plant.photo.attach(io: image_plant, filename: 'image.jpeg', content_type: 'image/jpeg')

puts "Creating plants"
plant5 = Plant.create!(
  name: "Chamaedorea Elegans",
  water: "Once per week",
  light: "Shadow is better",
  soil: "Silt",
  fertilizer: "Spring-Summer: Once every week",
  repotting: "Every 8 to 12 months: It likes medium pots",
  )
  image_plant = File.open("ChamaedoreaElegans_1")
  plant.photo.attach(io: image_plant, filename: 'image.jpeg', content_type: 'image/jpeg')

puts "Creating plants"
plant6 = Plant.create!(
  name: "Peace Lily",
  water: "Every day",
  light: "Direct light",
  soil: "Sand",
  fertilizer: "Spring-Summer: Once every 2 weeks",
  repotting: "Every 12 to 18 months: Repotting in a bigger pot",
  )
  image_plant = File.open("PeaceLily_4")
  plant.photo.attach(io: image_plant, filename: 'image.jpeg', content_type: 'image/jpeg')

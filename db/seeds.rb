puts "Cleaning up the database"
Restaurant.destroy_all
puts "The database is cleaned"

puts "Creating restaurants"
50.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    stars: rand(0..5)
  )
  puts "The restaurant #{restaurant.name} has been created"
end

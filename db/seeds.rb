require 'faker'

puts "Cleaning the DB"

Restaurant.destroy_all

puts "Seeding the DB"
CATEGORY = %w((chinese italian japanese french belgian))
5.times do
  Restaurant.create(name: Faker::Mountain.name, address: Faker::Space.galaxy, category: CATEGORY.sample)
  puts "created restaurants"
end

puts "done!"

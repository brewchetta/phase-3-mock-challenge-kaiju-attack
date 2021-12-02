# This will delete any existing rows from the Museum and Artist tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
# MonsterAttack.delete_all
Kaiju.delete_all
City.delete_all

puts "Creating seed data..."

puts "Cities..."
5.times do
  City.create(
    name: Faker::Nation.capital_city,
    population: rand(100000..10000000)
  )
end

puts "Monsters..."
5.times do
  Kaiju.create(
    name: Faker::Ancient.primordial,
    powers: "#{Faker::Science.modifier} #{Faker::Superhero.power}"
  )
end

puts "Attacks..."
# write out your test data here!

puts "Earth sure is full of things..."
puts "Seeding completed..."

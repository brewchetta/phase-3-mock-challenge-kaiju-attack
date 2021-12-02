# This will delete any existing rows from the Museum and Artist tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
MonsterAttack.delete_all
Kaiju.delete_all
City.delete_all

puts "Creating seed data..."
# write out your test data here!

puts "Seeing completed..."

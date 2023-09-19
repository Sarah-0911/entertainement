# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all
puts 'removing data'

puts 'creating resto'

dishroom = { name: 'Dishroom', address: '7 Boundary St, London E2 7JE', category: 'belgian' }
dominos = { name: 'Dominos Pizza', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
verone = { name: 'Pizza Verone', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
craponnois = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'french' }
sushi = { name: 'Ichi Sushi', address: '56A Shoreditch High St, London E1 6PQ', category: 'japanese' }

[dishroom, dominos, verone, craponnois, sushi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'

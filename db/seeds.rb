# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "empezando seed"
Restaurant.destroy_all

puts "Agregando 50 restauranes"

50.times do
    restaurant = Restaurant.new(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_name,
        rating: (1..5).to_a.sample,
        chef_name: Faker::Name.name
    )
    restaurant.save!
    puts "Creamos el restaurant con id #{restaurant.id}"
end
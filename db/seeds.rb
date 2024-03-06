# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all
@dorita = Restaurant.create!( name: "La Dorita", address: "Pete Docter", phone_number: "0981 222 610", category: "chinese" )
@larosa = Restaurant.create!( name: "La Rosa de Guadalupe", address: "Palermo", phone_number: "0981 222 610", category: "italian" )
@starbucks = Restaurant.create!( name: "Starbucks", address: "Recoleta", phone_number: "0981 222 610", category: "japanese" )
@burgerking = Restaurant.create!( name: "Burger King", address: "Palermo", phone_number: "0981 222 610", category: "french" )
@mc = Restaurant.create!( name: "McDonalds", address: "Recoleta", phone_number: "0981 222 610", category: "chinese" )
p "Created #{Restaurant.count} restaurants"

Review.destroy_all
@dorita.reviews.create!(content: "Bien!", rating: 5)
@larosa.reviews.create!(content: "mispoppersss", rating: 4)
@starbucks.reviews.create!(content: "Nice!", rating: 3)
@burgerking.reviews.create!(content: "Meh", rating: 2)
@mc.reviews.create!(content: "Muy bueno", rating: 1)
p "Created #{Review.count} reviews"

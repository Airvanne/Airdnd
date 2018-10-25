# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do |index|
	cities = City.create!(city_name: Faker::Address.city)
	dog_sitters = DogSitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: index + 1, dogs_id: index + 1)
  dogs = Dog.create!(name: Faker::Dog.name, city_id: index + 1, dog_sitters_id: index + 1)
  strolls = Stroll.create!(name: Faker::Address.street_name, city_id: index + 1, dog_id: index + 1)
end

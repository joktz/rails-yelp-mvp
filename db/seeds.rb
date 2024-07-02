# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

categories = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  Restaurant.create(name: Faker::Restaurant.name, category: categories.sample, phone_number: Faker::PhoneNumber.phone_number, address: Faker::Address.full_address)
end

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Flat.destroy_all
puts "Database cleaned"
puts "Creating Flats..."

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Galaxy Apartments',
  address: '123 Main Street, New York City',
  description: 'A luxurious apartment with stunning views of the city skyline.',
  price_per_night: 150,
  number_of_guests: 4
)

Flat.create!(
  name: 'Beachfront Villa',
  address: '456 Ocean Drive, Paradise Beach',
  description: 'A beachside villa with stunning ocean views and a private pool.',
  price_per_night: 250,
  number_of_guests: 2
)

Flat.create!(
  name: 'Charming Cottage',
  address: '789 Country Road, Countryside',
  description: 'A charming cottage with a cozy fireplace and a private garden.',
  price_per_night: 100,
  number_of_guests: 3
)

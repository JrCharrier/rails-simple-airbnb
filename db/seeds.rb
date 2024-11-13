require 'faker'

puts "Destroy all..."
Flat.destroy_all
puts "Creating 10 flats ..."
10.times do
  flat = Flat.new(
    name: Faker::Address.community,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    price_per_night: rand(50..450),
    number_of_guests: rand(1..10)
  )
  flat.save
end
puts "flats created !!!"

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

5.times do
  Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.city, phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
end
puts 'Finished!'

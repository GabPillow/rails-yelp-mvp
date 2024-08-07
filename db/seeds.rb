10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
end

Restaurant.find_each do |restaurant|
  rand(1..5).times do
    restaurant.reviews.create(
      rating: rand(0..5),
      content: Faker::Restaurant.review
    )
  end
end

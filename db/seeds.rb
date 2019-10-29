require "faker"

10.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: Faker::Address.street_address
  )
  restaurant.save!
end

100.times do
  Single.create(
    title: Faker::Address.street_name,
    artist: Faker::Name.name,
    release_date: Faker::Date.backward(4000)
  )
end

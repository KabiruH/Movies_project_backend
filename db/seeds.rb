puts "🌱 Seeding spices..."

10.times do
    Movie.create!(
      title: Faker::Movie.title,
      year: rand(2000..2023),
      description: Faker::Lorem.paragraph(sentence_count: 3),
      image_url: Faker::LoremFlickr.image(size: "50x60", search_terms: ['movies'], match_all: true)
    )
  end
  

  10.times do
    User.create!(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: Faker::Internet.password(min_length: 6)
    )
  end
  

puts "✅ Done seeding!"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# require 'open-uri'

# # Create dummy categories

10.times do
  Category.create(
    name: Faker::Job.unique.field
  )
end

# # Create dummy users

5.times do
  user = User.create(
    full_name: Faker::Name.name,
    email: Faker::Internet.unique.email,
    about: Faker::Quote.matz,
    password: '123456',
    from: Faker::Address.country,
    language: Faker::Nation.language,
    created_at: Date.today
  )

  user.avatar.attach(
    io: URI.open("https://i.pravatar.cc/300"),
    filename: "avatar#{user.id}.jpg",
    content_type: 'image/jpeg'
  )
end


# # Create dummy Requests

10.times do
  random_user = User.all.sample
  category = Category.all.sample

  request = Request.create(
    title: Faker::Job.title,
    description: Faker::Quote.matz,
    budget: Faker::Number.between(from: 5, to: 50),
    delivery: Faker::Number.between(from: 1, to: 10),
    user_id: random_user.id,
    category_id: category.id
  )
end


15.times do
  random_user = User.all.sample
  category = Category.all.sample

  gig = Gig.create!(
    title: Faker::Job.title,
    description: Faker::Quote.matz,
    active: Faker::Boolean.boolean,
    user_id: random_user.id,
    category_id: category.id
  )

  number = Faker::Number.between(from: 1, to: 3)

  gig.photos.attach(
    io: File.open(
      Rails.root.join("app/assets/images/gig_cover_#{number}.jpg")
    ),
    filename: "gig_cover_#{number}.jpg"
  )

  gig.pricings.create!(
    pricing_type: 0,
    title: Faker::Job.title,
    description: Faker::Quote.matz,
    price: Faker::Number.between(from: 1, to: 9),
    delivery_time: Faker::Number.between(from: 20, to: 30)
  )

  gig.pricings.create!(
    pricing_type: 1,
    title: Faker::Job.title,
    description: Faker::Quote.matz,
    price: Faker::Number.between(from: 10, to: 19),
    delivery_time: Faker::Number.between(from: 10, to: 19)
  )

  gig.pricings.create!(
    pricing_type: 2,
    title: Faker::Job.title,
    description: Faker::Quote.matz,
    price: Faker::Number.between(from: 20, to: 35),
    delivery_time: Faker::Number.between(from: 1, to: 10)
  )
end
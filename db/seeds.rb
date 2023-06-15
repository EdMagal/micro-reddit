require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create Users
puts "Creating users..."
4.times do
  User.create(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: "password"
  )
end
puts "4 users created!"

# Create posts
puts "Creating posts..."
10.times do
  Post.create(
    title: Faker::Lorem.sentence(word_count: 3),
    body: Faker::Lorem.paragraph(sentence_count: 2),
    user_id: rand(1..4)
  )
end
puts "10 posts created!"

# Create comments
puts "Creating comments..."
20.times do
  Comment.create(
    body: Faker::Lorem.paragraph(sentence_count: 2),
    post_id: rand(1..10),
    user_id: rand(1..4)
  )
end
puts "20 comments created!"

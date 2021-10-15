# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "Ryan", last_name: "Reynolds", email: "person1@test.com", password: "password", job: "Actor", location: "Canada", bio: "Canadian Actor")
User.create(first_name: "Christiano", last_name: "Ronaldo", email: "person2@test.com", password: "password", job: "Soccer Player", location: "Portugal", bio: "I always score")
User.create(first_name: "Ryan", last_name: "Gosling", email: "person3@test.com", password: "password", job: "Actor", location: "Canda", bio: "I have a notebook,  I renovated a house, which I wouldn't sell, and got caught in a heavy rain once.")
User.create(first_name: "Chris", last_name: "Hemsworth", email: "person4@test.com", password: "password", job: "Thor", location: "Asgard", bio: "Big hammer, even bigger muscles")
User.create(first_name: "Kevin", last_name: "Malone", email: "person5@test.com", password: "password", job: "Accountant", location: "Scranton, PA", bio: "NO, IT'S NOT ASHTON KOOOTCHER, IT'S KEVIN MALONE")
User.create(first_name: "Joe", last_name: "Biden", email: "person6@test.com", password: "password", job: "POTUS", location: "Washington D.C.", bio: "If we do everything right, if we do it with absolute certainty, there's still a 30% chance we're going to get it wrong.")

Rater.create(first_name: "Megan", last_name: "Fox", email: "rater1@test.com", password: "password")
Rater.create(first_name: "Angelina", last_name: "Jolie", email: "rater2@test.com", password: "password")
Rater.create(first_name: "Jennifer", last_name: "Aniston", email: "rater3@test.com", password: "password")
Rater.create(first_name: "Emma", last_name: "Stone", email: "rater4@test.com", password: "password")

Rating.create(rater_id: 1, description: "It is hard to differentitate which person he is in the photo", photo_id: 2, score_for_photo: 50, rater_feed_back: 1)
Rating.create(rater_id: 1, description: "He should not be wearing sunglasses", photo_id: 3, score_for_photo: 60, rater_feed_back: 1)
Rating.create(rater_id: 1, description: "The photo should be better quality", photo_id: 4, score_for_photo: 70, rater_feed_back: -1)
Rating.create(rater_id: 1, description: "The photo should be taken from a closer distance", photo_id: 5, score_for_photo: 80, rater_feed_back: -1)
Rating.create(rater_id: 2, description: "Wearing blue would make them look more trustworthy", photo_id: 17, score_for_photo: 95, rater_feed_back: 1)
Rating.create(rater_id: 2, description: "Too many people in the photo", photo_id: 12, score_for_photo: 75, rater_feed_back: 1)
Rating.create(rater_id: 3, description: "The photo should be better quality", photo_id: 15, score_for_photo: 20, rater_feed_back: 1)
Rating.create(rater_id: 3, description: "Too many people in the photo", photo_id: 16, score_for_photo: 70, rater_feed_back: -1)
Rating.create(rater_id: 4, description: "Holding a drink makes him look like a partier", photo_id: 12, score_for_photo: 80, rater_feed_back: -1)
Rating.create(rater_id: 4, description: "POTUS should not be on tinder", photo_id: 10, score_for_photo: 90, rater_feed_back: 1)

Photo.create(user_id: 1, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 1, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 1, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 1, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 2, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 2, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 2, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 3, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 3, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 3, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 4, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 4, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 5, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 5, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 6, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")
Photo.create(user_id: 6, img_url: "https://cdn2.vectorstock.com/i/1000x1000/92/26/user-silhouette-with-question-mark-icon-vector-8989226.jpg")

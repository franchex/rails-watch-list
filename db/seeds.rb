
require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Movie.destroy_all

file = URI.open ("https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg")
movie = Movie.new(title:"Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",  rating: 6.9)
movie.photo.attach(io: file, filename: "Wonder Woman 1984.jpg", content_type: "image/jpg")
movie.save


file = URI.open ("https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg")
movie = Movie.new(title:"The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", rating: 8.7)
movie.photo.attach(io: file, filename: "The Shawshank Redemption.jpg", content_type: "image/jpg")
movie.save

file = URI.open ("https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg")
movie = Movie.new(title:"Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", rating: 7.9)
movie.photo.attach(io: file, filename: "Titanic.jpg", content_type: "image/jpg")
movie.save

file = URI.open ("https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg")
movie = Movie.new(title:"Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", rating: 7.0)
movie.photo.attach(io: file, filename: "Ocean's Eight.jpg", content_type: "image/jpg")
movie.save

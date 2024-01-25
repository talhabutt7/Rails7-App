# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

l = Location.create!(name: "London")
l.recordings.create!(temp:25, status: "cloudy")
l.recordings.create!(temp:23, status: "rain")
l.recordings.create!(temp:21, status: "sunny")
l.recordings.create!(temp:7, status: "overcast")
l.recordings.create!(temp:9, status: "snow")
l.recordings.create!(temp:10, status: "cloudy")
l.recordings.create!(temp:30, status: "rain")
l.recordings.create!(temp:16, status: "cloudy")
l.recordings.create!(temp:17, status: "overcast")
l.recordings.create!(temp:11, status: "snow")
l.recordings.create!(temp:1, status: "rain")
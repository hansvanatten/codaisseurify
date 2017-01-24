# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.delete_all
Song.delete_all
Artist.delete_all

artist1 = Artist.create!(name: "Queen")
artist2 = Artist.create!(name: "Twenty One Pilots")
artist3 = Artist.create!(name: "Eagles")
artist4 = Artist.create!(name: "Red Hot Chili Peppers")

song1 = Song.create!({name: "Bohemian Rhapsody", artist: artist1})
song2 = Song.create!({name: "Stressed Out", artist: artist2})
song3 = Song.create!({name: "Ride", artist: artist2})
song4 = Song.create!({name: "Hotel California", artist: artist3})
song5 = Song.create!({name: "Californication", artist: artist4})
song6 = Song.create!({name: "Dark Necessities", artist: artist4})


# Photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dghfv4v5j/image/upload/v1485117131/Queen_logo_d6o9yk.jpg", artist: artist1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dghfv4v5j/image/upload/v1485117131/21_Pilots_logo_ak1jgv.jpg", artist: artist2)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dghfv4v5j/image/upload/v1485117130/Eagles_logo_lajahj.jpg",artist: artist3)
photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dghfv4v5j/image/upload/v1485117131/RHCP_logo_umkxub.jpg",artist: artist4)

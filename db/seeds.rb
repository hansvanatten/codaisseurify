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

song1 = Song.create!({name: "Bohemian Rhapsody"})
song2 = Song.create!({name: "Stressed Out"})
song3 = Song.create!({name: "Ride"})
song4 = Song.create!({name: "Hotel California"})
song5 = Song.create!({name: "Californication"})
song6 = Song.create!({name: "Dark Necessities"})

artist1 = Artist.create!(name: "Queen", photos: [photo1])
artist2 = Artist.create!(name: "Twenty One Pilots", photos: [photo2])
artist3 = Artist.create!(name: "Eagles", photos: [photo3])
artist4 = Artist.create!(name: "Red Hot Chili Peppers", photos: [photo4])

# Photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dghfv4v5j/image/upload/v1485117131/Queen_logo_d6o9yk.jpg")
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dghfv4v5j/image/upload/v1485117131/21_Pilots_logo_ak1jgv.jpg")
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dghfv4v5j/image/upload/v1485117130/Eagles_logo_lajahj.jpg")
photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dghfv4v5j/image/upload/v1485117131/RHCP_logo_umkxub.jpg")

artist1.songs << [song1]
artist1.save
artist2.songs << [song2, song3]
artist2.save
artist3.songs << [song4]
artist3.save
artist4.songs << [song5, song6]
artist4.save

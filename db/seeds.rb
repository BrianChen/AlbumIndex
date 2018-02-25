# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  Artist.create!(name: 'ArtistName'+(i+1).to_s)
end

10.times do |i|
  Album.create!(title: 'AlbumTitle'+(i+1).to_s)
end

10.times do |i|
  Song.create!(
    title: 'SongTitle'+(i+1).to_s,
    artist_id: i+1,
    album_id: i+1
  )
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#500 songs 100 albums 10 arist

0.upto(9) do |i|
  Artist.create([{
    name: Faker::RockBand.name
  }])

  j = (i * 10) + 1
  j.upto(j+9) do |j|
    Album.create([{
      title: Faker::Food.dish
    }])

    5.times do
      Song.create([{
        title: Faker::Movie.quote,
        artist_id: i+1,
        album_id: j,
      }])
    end
  end
end

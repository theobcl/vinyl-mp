require 'faker'

p "Destroy Database"
if Artist.any?
  Artist.destroy_all
end

p "Create 15 vinyls"
10.times do
  artist = Artist.create(name: Faker::Music.band, style: Faker::Music.genre, description: Faker::Lorem.sentence(word_count: 3))
  3.times do
    Vinyl.create(name: Faker::Music.album, artist: artist)
  end
end

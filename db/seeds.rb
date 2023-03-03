require 'faker'

10.times do
  Vinyl.create(name: Faker::Music.album, user: User.all.sample)
end

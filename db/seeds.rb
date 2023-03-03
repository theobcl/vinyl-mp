require 'faker'

p "Destroy Database"
if Vinyl.any?
  Vinyl.destroy_all
end


p "Create 15 vinyls"
15.times do
  Vinyl.create(name: Faker::Music.album, user: User.all.sample)
end

Duck.destroy_all
Student.destroy_all

10.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
end

10.times do
  Duck.create(name: Faker::Creature::Dog.meme_phrase, description: Faker::Creature::Dog.breed, student: Student.all.sample)
end

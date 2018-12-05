how_cute = ['ugly', 'scary', 'cute', 'impossibly cute', 'funny looking', 'beautiful']
how_soft = ['soft', 'extremely soft', 'like a cloud', 'medium', 'hardy', 'solid as a rock']

50.times do
  Puppy.create!(name: Faker::Dog.name,
                age: rand(15),
                cuteness: how_cute.sample,
                softness: how_soft.sample)
end

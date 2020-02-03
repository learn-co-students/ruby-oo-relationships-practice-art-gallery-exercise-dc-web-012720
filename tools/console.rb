require_relative '../config/environment.rb'


a1 = Artist.new("Ralph", 4)
a2 = Artist.new("James", 7)
a3 = Artist.new("Jake", 10)

g1 = Gallery.new("MOA", "Baltimore")
g2 = Gallery.new("BOA", "Fulton")
g3 = Gallery.new("POA", "Ellicott City")


p1 = Painting.new("Cat swimming", 30, a1, g1)
p2 = Painting.new("Dog crying", 40, a2, g2)
p3 = Painting.new("Mouse chasing cat", 50, a3, g3)


binding.pry

puts "Bob Ross rules."

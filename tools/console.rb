require_relative '../config/environment.rb'

art1 = Artist.new("Picaso", 5)
art2 = Artist.new("Divinci",3)
art3 = Artist.new("Freda", 2)
art5 = Artist.new("Demetra", 6)

gal1 = Gallery.new("Gally" , "Boston, MA")
gal2 = Gallery.new("Gallaria", "New York, NY")
gal3 = Gallery.new("Gallery", "Chicago, IL")

paint1 = Painting.new("Flower", 4, art1, gal1)
paint1 = Painting.new("Power", 7, art3, gal1)
paint2 = Painting.new("Meadow", 5, art2, gal2)
paint3 = Painting.new("Park", 6, art3, gal3)



art3.create_painting('rain', 8, gal1)
art2.create_painting("snow", 5, gal2)
art5.create_painting("sunshine", 3, gal3)

binding.pry

puts "Bob Ross rules."

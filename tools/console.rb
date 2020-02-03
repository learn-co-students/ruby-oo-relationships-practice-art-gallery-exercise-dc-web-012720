require_relative '../config/environment.rb'

#Test Data

artist1 = Artist.new("Carl", 34)
artist2 = Artist.new("Andrew", 10)
artist3 = Artist.new("Taylor", 12)
artist4 = Artist.new("Dani", 16)

gallery1 = Gallery.new("Louve", "Paris")
gallery2 = Gallery.new("NY Modern Art", "New York")
gallery3 = Gallery.new("National Gallery", "London")
gallery4 = Gallery.new("Uffizi", "Florence")

painting1 = Painting.new("Monalisa", 5600, artist1, gallery1)
painting2 = Painting.new("Starey Night", 1000, artist1, gallery4)
painting3 = Painting.new("Self", 100, artist2, gallery3)
painting4 = Painting.new("City Scape", 2500, artist3, gallery2)
painting5 = Painting.new("Skyline", 4000, artist2, gallery4)



Pry.start

puts "Bob Ross rules."

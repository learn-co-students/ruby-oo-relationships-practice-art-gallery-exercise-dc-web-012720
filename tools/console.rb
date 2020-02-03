require_relative '../config/environment.rb'

ross = Artist.new("Bob Ross", 20)
gogh = Artist.new("Vincent Van Gogh", 40)
vinci = Artist.new("Leonardo Da Vinci", 35)

louvre = Gallery.new("Louvre Museum", "Paris")
gugenheim = Gallery.new("Gugenheim Museum", "NYC")

lisa = Painting.new("Mona Lisa", 5000000, vinci, louvre)
night = Painting.new("The Starry Night", 3500000, gogh, gugenheim)
portrait = Painting.new("Van Gogh Self Portrait", 10, gogh, louvre)
waterfall = Painting.new("Alaskan Waterfall", 100000, ross, gugenheim)
brook = Painting.new("Bubbling Brook", 100000, ross, gugenheim)







Pry.start

puts "Bob Ross rules."

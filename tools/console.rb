require_relative '../config/environment.rb'

van_gogh = Artist.new("Van Gogh", 36)
monet = Artist.new("Monet", 24)
da_vinci = Artist.new("Da Vinci", 107)

moma = Gallery.new("Moma", "New York")
albrightknox = Gallery.new("Albright-Knox", "Buffalo")
louvre = Gallery.new("Louvre", "Paris")
guggenheim = Gallery.new("Guggenheim", "New York")

starry_night = Painting.new("Starry Night", 20000, van_gogh, moma)
potato_eaters = Painting.new("Potato Eaters", 11000, van_gogh, guggenheim)
water_lily = Painting.new("Water Lily Pond", 15000, monet, louvre)
poppies = Painting.new("Poppies", 8000, monet, albrightknox)
mona_lisa = Painting.new("Mona Lisa", 40000, da_vinci, louvre)
last_supper = Painting.new("The Last Supper", 25000, da_vinci, albrightknox)


binding.pry

puts "Bob Ross rules."

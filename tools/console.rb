require_relative '../config/environment.rb'
require 'pry'


marie = Artist.new("Marie", 2)
bri = Artist.new("Bri", 5)
ryan = Artist.new("Ryan", 8)

moma = Gallery.new("MOMA", "NYC")
sea = Gallery.new("SadBoi Supreme", "Seattle")

pony = Painting.new("Sad Horse", 400, ryan, sea)
doggy = Painting.new("Sad Dog", 200, bri, sea)
contra = Painting.new("Contrapoints Portrait", 800, marie, moma)
diane = Painting.new("Guy the Buffalo", 300, ryan, moma)
iron = Painting.new("Ferrofluid", 900, bri, moma)
chlor = Painting.new("Ferrous Chloride", 100, bri, sea)

Pry.start



require_relative '../config/environment.rb'

betterBest = Gallery.new("Top of the Line", "LA")
bestGallery = Gallery.new("The Best", "Monaco")
okGallery = Gallery.new("Average", "NYC")
worstGallery = Gallery.new("The Worst Gallery", "Ohio")


jon = Artist.new("Jon Doe", 20)
jane = Artist.new("Jane Doe", 1)

jonPainting1 = Painting.new("one", 1000, jon, okGallery)
jonPainting2 = Painting.new("two", 10000, jon, okGallery)
jonPainting3 = Painting.new("three", 100000, jon, bestGallery)
jonPainting4 = Painting.new("four", 1000000, jon, betterBest)
janePainting1 = Painting.new("janeOne", 0, jane, worstGallery)
janePainting2 = Painting.new("janeTwo", 10, jane, worstGallery)
janePainting3 = Painting.new("janeThree", 20, jane, worstGallery)
janePainting4 = Painting.new("janeFour", 20, jane, worstGallery)
janePainting5 = Painting.new("janeFive", 20, jane, worstGallery)
janePainting6 = Painting.new("janeSix", 50, jane, okGallery)
janePainting7 = Painting.new("janeSeven", 5, jane, worstGallery)
janePainting8 = Painting.new("janeEight", 2, jane, worstGallery)
janePainting9 = Painting.new("janeNine", 1, jane, worstGallery)





binding.pry

puts "Bob Ross rules."

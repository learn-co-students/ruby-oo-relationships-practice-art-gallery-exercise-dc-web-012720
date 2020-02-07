class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end
  def self.all
    @@all
  end
  def paintings
    Painting.all.select do |paint|
      paint.gallery == self
    end
  end
  def artists
    self.paintings.map do |paint|
      paint.artist 
    end
  end
  def artist_names 
    self.paintings.map do |paint|
      paint.artist.name
    end
  end
  def painting_prices
    self.paintings.map do |paint|
      paint.price 
    end
  end
  def most_expensive_painting
    self.painting_prices.max
  end
end

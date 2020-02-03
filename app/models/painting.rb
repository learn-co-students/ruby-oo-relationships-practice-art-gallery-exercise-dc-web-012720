class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @artist = artist
    @gallery = gallery 
    @title = title
    @price = price
    @@all << self
  end

  def self.total_price
    self.all.map { |painting| painting.price }.sum
  end 

  def self.all
    @@all
  end 

end

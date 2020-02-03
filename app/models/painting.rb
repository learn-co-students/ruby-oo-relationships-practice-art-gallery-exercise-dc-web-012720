class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist_obj, gallery_obj)
    @title = title
    @price = price
    @artist = artist_obj
    @gallery = gallery_obj
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.sum do |painting_obj|
      painting_obj.price
    end
  end

end

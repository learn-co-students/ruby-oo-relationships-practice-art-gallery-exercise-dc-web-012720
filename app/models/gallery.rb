class Gallery

  attr_reader :name, :city

  @@all = []
  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|paint| paint.gallery == self}
  end

  def artists
    self.paintings.map{|paint| paint.artist}.uniq
  end

  def artist_names
    self.artists.map{|artist| artist.name}
  end

  def most_expensive_painting
    self.paintings.max_by {|painting| painting.price}
  end

end

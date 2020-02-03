class Gallery

  attr_reader :name, :city, :artist
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
    Painting.all.select { |same| same.gallery == self}
  end

  def artists
    self.paintings.map { |same| same.artist}.uniq
  end

  def artist_names
    self.artists.map { |same| same.name}
  end

  def most_expensive_painting
    hash = {}
      self.paintings.each do |val|
        hash[val] = val.price
      end
      hash.key(hash.values.max)
  end
end

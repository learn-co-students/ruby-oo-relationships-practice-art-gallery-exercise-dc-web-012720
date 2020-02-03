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
    Painting.all.select {|painting_obj| painting_obj.gallery == self}
  end

  def artists
    self.paintings.map {|painting_obj| painting_obj.artist}.uniq
  end

  def artist_names
    self.artists.map {|artist_obj| artist_obj.name}
  end

  def most_expensive_painting
    self.paintings.max_by{|painting_obj| painting_obj.price}
  end

end

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
    Painting.all.select do |paintings|
      paintings.gallery == self
    end
  end

  def artists
    self.paintings.map do |paintings|
      paintings.artist
    end
  end

  def artist_names
    self.artists.map do |artists|
      artists.name
    end
  end

end

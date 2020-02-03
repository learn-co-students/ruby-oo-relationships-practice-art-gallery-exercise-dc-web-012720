class Artist

  attr_reader :name, :years_experience

  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|paint| paint.artist == self}
  end

  def galleries
    self.paintings.map {|paint| paint.gallery}.uniq
  end

  def cities
    self.galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    yoe = 0
    self.all.each {|artist| yoe += artist.years_experience}
    yoe
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end

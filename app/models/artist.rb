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
    Painting.all.select { |paint| paint.artist == self }
  end

  def galleries
    self.paintings.map { |location| location.gallery }.uniq
  end

  def cities
    self.galleries.map { |place| place.city }
  end

  def self.total_experience
    total = 0
    Artist.all.each { |years| total += years.years_experience }
    total
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end

require 'pry'

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
    Painting.all.select do |paintings|
      paintings.artist == self
    end
  end

  def galleries
    Painting.all.map do |paintings|
      if paintings.artist == self
        paintings.gallery
      end
    end
  end

  def cities
    self.galleries.map do |galleries|
      galleries.city
    end
  end 

  def self.total_experience
    self.all.select do |artist|
      artist.years_experience
    end.sum
  end

  def self.most_prolific

  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end

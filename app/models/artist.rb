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
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map{|p| p.gallery} 
  end

  def cities
    galleries.map{|gallery| gallery.city}
  end

  def self.total_experience
    self.all.reduce(0) do |sum, artist| 
      sum + artist.years_experience
    end
  end

  def self.most_prolific
    prolific = self.all[0]
    self.all.each{|artist|
      if artist.paintings.length/artist.years_experience > prolific.paintings.length/prolific.years_experience
        prolific = artist
      end
    }
    prolific
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end

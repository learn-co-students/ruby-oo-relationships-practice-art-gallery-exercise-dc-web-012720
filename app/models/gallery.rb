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
    Painting.all.select{|painting| painting.gallery == self}
  end

  def artists
    paintings.map{|painting| painting.artist}
  end

  def artist_names
    artist.map{|artist| artist.name}
  end
  
  def most_expensive_painting
    highestTotal = paintings[0]
    paintings.each{|painting| 
      if painting.price > highestTotal.price
        highestTotal = painting
      end
    }
    highestTotal
  end 
end

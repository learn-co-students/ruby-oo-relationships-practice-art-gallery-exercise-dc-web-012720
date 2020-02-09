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
    Painting.all.select do |paint|
      paint.artist == self
    end
  end
  def galleries 
    self.paintings.map do |paint|
      paint.gallery
    end
  end
  def cities
    self.paintings.map do |paint|
      paint.gallery.city
    end
  end
  def self.total_experience
    total = 0 
    self.all.map do |artist|
      total += artist.years_experience
    end
    total
  end
  def average_num_paint_per_year
      self.paintings.count/self.years_experience.to_f
  end
  def self.most_prolific
    most_prolific = nil
    average = 0 
    self.all.each do |artist|
      if artist.average_num_paint_per_year > average
        most_prolific = artist
      end
    end
    most_prolific
  end
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
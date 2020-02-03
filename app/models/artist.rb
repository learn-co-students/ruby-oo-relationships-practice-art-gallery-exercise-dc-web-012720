class Artist

  attr_reader :name, :years_experience, :painting_rate
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
    Painting.all.select do |paint_obj|
      paint_obj.artist == self
    end
  end

  def galleries
    self.paintings.map do |paint_obj|
      paint_obj.gallery
    end
  end

  def cities
    self.galleries.map do |gallery_obj|
      gallery_obj.city
    end.uniq
  end

  def self.total_experience
    self.all.sum do |artist_obj|
      artist_obj.years_experience
    end
  end

  def create_painting(title, price, gallery_obj)
    Painting.new(title, price, self, gallery_obj)
  end

  def painting_rate
    @painting_rate = self.paintings.count.to_f / self.years_experience
  end

  def self.most_prolific
    self.all.max_by {|artist_obj| artist_obj.painting_rate}
  end

end

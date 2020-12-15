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

  def painting
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    painting.map{|painting| painting.gallery}
  end

  def cities
    galleries.map{|gallery| gallery.city}
  end

  def self.total_experience
    self.all.sum{|artist| artist.years_experience}
  end

  def self.most_prolific
    self.all.max_by do |artist|
      artist.painting.length.to_f / artist.years_experience.to_f
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  
  end


  # title`, `price` and `gallery`
  



end
# * `Artist.all`
# * Returns an `array` of all the artists

# [X] `Artist#paintings`
# * Returns an `array` all the paintings by an artist

# [X] `Artist#galleries`
# * Returns an `array` of all the galleries that an artist has paintings in

# [X]`Artist#cities`
# * Return an `array` of all cities that an artist has paintings in

# [X] `Artist.total_experience`
# * Returns an `integer` that is the total years of experience of all artists

# [X] `Artist.most_prolific`
# * Returns an `instance` of the artist with the highest amount of paintings per year of experience.

# [X] `Artist#create_painting`
# * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
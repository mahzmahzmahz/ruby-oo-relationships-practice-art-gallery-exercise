class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

# [X] `Gallery.all`
# * Returns an `array` of all the galleries

  def self.all
    @@all
  end

# [X] `Gallery#paintings`
# * Returns an `array` of all paintings in a gallery

  def paintings
    Painting.all.select{|painting| painting.gallery == self}
  end

# [X]`Gallery#artists`
# * Returns an `array` of all artists that have a painting in a gallery

  def artists
    paintings.map{|painting| painting.artist}
  end

  # [] `Gallery#artist_names`
# * Returns an `array` of the names of all artists that have a painting in a gallery
  
  def artists_names
    artists.map{|artists| artists.name}
  end


# [] `Gallery#most_expensive_painting`
# * Returns an `instance` of the most expensive painting in a gallery
  def most_expensive_painting
    paints = paintings.select{|paintings| paintings.price}
    paints.max{|painting| painting.price}
  end





end










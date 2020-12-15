class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.sum{|painting| painting.price}
  end


end

# [X] `Painting.all`
# * Returns an `array` of all the paintings

# [X[ `Painting.total_price`
# * Returns an `integer` that is the total price of all paintings

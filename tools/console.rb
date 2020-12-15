require_relative '../config/environment.rb'

a1 = Artist.new("Alex", 12)
a2 = Artist.new("Dave", 10)


g1 = Gallery.new("Le Louvre", "Paris")
g2 = Gallery.new("Canal Street Fancy Pants", "NYC")



p1 = Painting.new("Mona", 10000, a1, g1)
p1 = Painting.new("Lisa", 11000, a2, g2)



binding.pry

puts "Bob Ross rules."

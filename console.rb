require 'pry'
require_relative './band.rb'
require_relative './concert.rb'
require_relative './venue.rb'

hi = 'hello'

b1 = Band.new("The Black Keys", "New York")
b2 = Band.new("HONNE", "London")
b3 = Band.new("HAIM", "CA")
b4 = Band.new("Lynyrd Skynyrd", "Jacksonville")
b5 = Band.new("Kaleo", "Iceland")

v1 = Venue.new("Madison Square Garden", "New York")
v2 = Venue.new("TD Garden", "Boston")
v3 = Venue.new("Staples Center", "Los Angeles")
v4 = Venue.new("Oracle Arena", "Oakland")

c1 = Concert.new("January 1st", b1, v2)
c2 = Concert.new("February 4th", b2, v2)
c3 = Concert.new("December 31st", b1, v1)
c4 = Concert.new("October 20th", b3, v4)
c5 = Concert.new("March 17th", b5, v3)

binding.pry

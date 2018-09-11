require "pry"

class Venue

  attr_accessor :title, :city

  @@all = []

  def initialize(title, city)
    @title = title
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def concerts
    Concert.all.select do |concert_instance|
      concert_instance.venue == self
    end
  end

  def bands
    concerts.map do |concert_instance|
      concert_instance.band
    end
  end
  
end


# # #### VENUE
# - Venue should initialize with a title and city
# - Venue should have a method Venue.all method which returns all the instances of Venue
# - Venue should have a method Venue#concerts that lists all the concerts that have ever been performed in that venue
# - Venue should have a method Venue#bands that lists all the bands that have ever played in that venue

require "pry"

class Band
  attr_reader :hometown
  attr_accessor :name

  @@all = []

  def initialize(name, hometown)
    @name = name
    @hometown = hometown
    @@all << self
  end

  def self.all
    @@all
  end

  def play_in_venue(date, venue)
    Concert.new(date, self, venue)
  end

  def concerts
    Concert.all.select do |concert_instance|
      concert_instance.band == self
    end
  end

  def self.all_introductions
    self.all.each do |band_instance|
      puts "Hello, we are #{band_instance.name} and we're from #{band_instance.hometown}"
    end
  end

  def venues
    concerts.map do |concert_instance|
      concert_instance.venue
    end
  end

end



# #### BAND
# - Band should initialize with a name and hometown
# - Band should have a Band#name and Band#hometown and a band should be able to change its name
# - Band should have a method Band.all that returns all the instances of Band
# - Band should have a method Band#play_in_venue that takes a venue and date as a string as arguments and associates the band to that venue
# - Band should have a method Band#concerts should return an array of all that band's concerts
# - Band should have a method Band.all_introductions that puts out a message of "Hello, we are {insert band name here} and we're from {insert hometown here}" for each band
# - Band should have a method Band#venues that returns an array of all the venues the band has concerts in

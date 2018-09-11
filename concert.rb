require "pry"

class Concert

  attr_reader :band, :venue

  @@all = []

  def initialize(date, band, venue)
    @date = date
    @band = band
    @venue = venue
    @@all << self
  end

  def self.all
    @@all
  end

  # CONCERT#BAND AND CONCERT#VENUE ARE TRICK QUESTIONS! THEY'RE INCLUDED IN THE ATTR_READERS! Just call <instance>.band or <instance.venue

  def hometown_show?
    if venue.city == band.hometown
      true
    end
  end

end


# #### CONCERT
# - Concert should have a Concert.all method which returns all the instances of Concert
# - Concert should initialize with a date, band, and venue
# - Concert should have methods Concert#band and Concert#venue that return the band and venue associated to the Concert
# - Concent should have a method Concert#hometown_show? that returns true if the concert is in the band's hometown

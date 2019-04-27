class Song
  attr_accessor :artist, :title

  @@all = []

  def initialize(title)
    #initializes the song, with information about the song name and the artist
    @title = title
    @@all << self
  end

  def self.all
    #returns everything in the @@all array
    @@all
  end
  
end

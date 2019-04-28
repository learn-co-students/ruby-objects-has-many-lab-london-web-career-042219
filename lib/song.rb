class Song
  attr_accessor :name, :artist

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

  def artist_name
  #returns the name of the artist associated with a Song instance
    @artist.name
  end


end

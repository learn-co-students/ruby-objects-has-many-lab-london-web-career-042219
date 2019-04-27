class Artist
  attr_accessor :name

  @@all = [] #to keep track of all instances being created

  def initialize(name) #everytime an Artist instance is created, this method is called. Everything inside the block is its properties
    @name = name
    @songs = []

    @@all << self
  end

  def self.all
    @@all
  end

  def add_song_by_name(name)
  #adds a song to the songs array for that instance
    @songs << name
  end

  def song_count
    selection = Song.all.select{|song| song.artist = self}
    selection.length
  end


end

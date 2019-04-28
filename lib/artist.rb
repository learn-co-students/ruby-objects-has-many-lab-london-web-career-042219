class Artist
  attr_accessor :name

  @@song_counter = 0

  @@all = [] #to keep track of all instances being created

  def initialize(name) #everytime an Artist instance is created, this method is called. Everything inside the block is its properties
    @name = name
    @songs = []

    @@all << self
  end

  def self.all
    @@all
  end

  def add_song_by_name(song_name)
    #accepts an argument which is the song instance created
    new_song = Song.new(song_name)
    #creates a new song from the Song Class
    @songs << new_song
    #pushes this into the @song array
    song_name.artist = self
    #makes sure that the song pushed into the array is associated with the Artist instance
    @@song_counter += 1
    #increments the @@song_counter everytime it is added to the array

  end

  def self.song_count
    @@song_counter
  end

end

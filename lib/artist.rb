class Artist

  attr_accessor :name
  @@all = []
 
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
 
  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def self.song_count
    result=0
    self.all.each {|artist| result+=artist.songs.length }
    result
  end

end

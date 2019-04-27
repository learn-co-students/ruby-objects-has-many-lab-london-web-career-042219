require 'pry'
class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.song_count
    Song.all.count
  end
end
#binding.pry
#puts "Mischief Managed!"

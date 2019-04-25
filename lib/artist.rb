class Artist

  attr_reader :name, :songs

  @@all = []

  def initialize(moniker)
    @name = moniker
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(title)
    self.add_song(Song.new(title))
  end

  def self.song_count
    Song.all.count
  end

end
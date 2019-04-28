class Artist
    attr_accessor :name
    attr_reader :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
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

    def self.all
      @@all
    end
end

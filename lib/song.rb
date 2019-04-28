class Song
    attr_reader :name
    attr_accessor :artist

     @@all = []

     def initialize(title)
        @name = title
        @@all << self
     end

     def artist_name
       if @artist
          @artist.name
        else
          return nil
        end
     end

     def add_song_by_name(name)
       song = Song.new(name)
       @songs << song
       song.artist = self
     end

     def self.all
        return @@all
    end


 end

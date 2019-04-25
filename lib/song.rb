require 'pry'

class Song

attr_accessor :name, :artist

@@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    # #Notice that we used the self keyword inside the #artist_name method
    # to refer to the instance of Song on which the method is being called.
    # Then we call #artist on that song instance. This would return the Artist
    # instance associated to the song. Chaining a call to #name after that is
    # equivalent to saying: call #name on the return value of self.artist, i.e.
    # call #name on the artist of this song.
    if @artist
      @artist.name
    else
      nil
    end
  end

end

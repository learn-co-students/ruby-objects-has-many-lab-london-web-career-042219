class Song

  attr_accessor :artist, :name

  @@all = []

  def initialize(title)
    @name = title
    @@all << self
  end

  def artist_name
    if @artist != nil then return @artist.name end
    return nil
  end

  def self.all
    @@all
  end

end
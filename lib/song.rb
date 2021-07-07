class Song
    attr_reader :name
    attr_accessor :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @artist = nil
    end

    def self.all
        return @@all
    end

    
end
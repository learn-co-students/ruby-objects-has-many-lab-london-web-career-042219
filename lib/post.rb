class Post

  attr_reader :title
  attr_accessor :author

  @@all = []

  def initialize(text)
    @title = text
    @@all << self
  end

  def author_name
    if @author != nil then return @author.name end
    return nil
  end

  def self.all
    @@all
  end

end
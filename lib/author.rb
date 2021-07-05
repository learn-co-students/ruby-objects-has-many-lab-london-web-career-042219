class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name=name
    @@all << self
    @posts = []
  end

  def posts
    @posts
  end

  def self.all
    @@all
  end

  def add_post( post )
    @posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    add_post(Post.new(post_title))
  end

  def self.post_count
    result=0
    self.all.each {|author| result+=author.posts.length }
    result
  end

end

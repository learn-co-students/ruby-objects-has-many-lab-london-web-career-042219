class Author
    attr_accessor :name
    attr_reader :posts

    @@all = []

    def initialize(name)
        @name = name
        @posts = []
    end

     def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(title)
      self.add_post(Post.new(title))
    end

    def self.post_count
      Post.all.count
    end

    def self.all
      @@all
    end
end

class Post
    attr_reader :title
    attr_accessor :author

     @@all = []

     def initialize(title)
        @title = title
        @@all << self
     end

     def author_name
       if @author
          @author.name
        else
          return nil
        end
     end

     def add_post_by_name(name)
       post = Post.new(name)
       @posts << post
       post.author = self
     end

     def self.all
        return @@all
    end


 end

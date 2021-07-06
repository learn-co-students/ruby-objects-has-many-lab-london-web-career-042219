
require "pry"
class Author

  @@posts = []

attr_accessor :name, :post

  def initialize(name)
    @name = name
    @posts = [] #has many posts - this is all that means
  end

  # def posts #we want to go over all the posts and see the ones that belong to this instance author
  #   Posts.all.select {|posts| post.user == self}
  # end

  def posts
    Post.all.select{|post| post.author == self}
  end

  def add_post(post)
    @posts << post
    @@posts << post #we push the new post into the array of posts
    post.author = self #we are saying that the author of this post is the same of this class instance
  end

  def add_post_by_title(post)
    post = Post.new(post) #take the name of the post and this will create a new one
    @posts << post
    @@posts << post #and add it to the array that we initialized
    post.author = self #and the post's artist is the same as the instance we are on now.
  end

  def self.post_count
    @@posts.length
  end
end
# binding.pry

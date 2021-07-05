class Post

  @@all = []

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end
end
  #
  # describe '#author' do
  #   it 'belongs to an author' do
  #     sophie = Author.new('Sophie')
  #     post.author = sophie
  #     expect(post.author).to eq(sophie)
  #   end
  # end
  #
  # describe '#author_name' do
  #   it 'knows the name of its author' do
  #     sophie = Author.new('Sophie')
  #     post.author = sophie
  #     expect(post.author_name).to eq('Sophie')
  #   end
  #
  #   it 'returns nil if the post does not have an author' do
  #     expect(post.author_name).to eq nil
  #   end
  # end

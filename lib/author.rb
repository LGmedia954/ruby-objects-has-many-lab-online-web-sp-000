class Author
  attr_accessor :name
  
  @@all = []
  
  def initialize(name = nil)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end


  
  def add_post(post)
    @posts << title
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end
  
  
  
  def self.post_count
    @@post_count
  end
  
end
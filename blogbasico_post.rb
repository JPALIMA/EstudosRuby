class Post
    attr_accessor :title, :author, :content

    def initialize(title, author, content)
        @title = title
        @author = author
        @content = content
    end
end

class Blog
    attr_accessor :posts

    def initialize
        @posts = []
    end

    def add_post(post)
        @posts << post
    end

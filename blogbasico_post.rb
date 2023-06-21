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

    def display_posts
        @posts.each do |post|
            puts "Title: #{post.title}"
            puts "Author: #{post.author}"
            puts "Content: #{post.content}"
            puts "-----------------------"
        end
    end
end

#Criando alguns posts
post1 = Post.new
blog.add_post(post1)
blog.add_post(post2)

#Exibindo os posts do blog
blog.display_posts
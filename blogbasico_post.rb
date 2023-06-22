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
            puts "---------------------"
        end
    end

    def count_posts
        puts "Total Posts: #{@posts.length}"
    end

    def search_posts_by_author(author)
        found_posts = @posts.select { |post| post.author == author}

        if found_posts.empty?
            puts "No posts found for author: #{author}"
        else
            puts "Posts by author #{author}:"
            found_posts.each do |post|
                puts "Title: #{post.title}"
                puts "Author: #{post.author}"
                puts "Content: #{post.content}"
                puts "-----------------------"
            end
        end
    end
end

#Criando uma instância da classe Blog
blog = Blog.new


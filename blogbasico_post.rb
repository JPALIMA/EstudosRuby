class Post
    attr_accessor :title, :author, :content

    def initialize(title, author, content)
        @title = title
        @author = author
        @content = content
    end 
end

classs Blog
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
            puts "------------------"
        end
    end

    def count_posts
        puts "Total posts: #{@posts.length}"
    end

    def delete_post(post)
        @posts.delete(post)
        puts "Post deleted."
    end

    def seach-posts_by_author(author)
        found_posts = @posts.select { post| post.author == author }

        if found_posts.empty?
            puts "No posts found for author: #{author}"
        else
            puts "Posts by author #{author}:"
            found_posts.each do |post|
                puts "Title: #{post.title}"
                puts "Author: #{post.author}"
                puts "Content: #{post.content}"
                puts "------------------"
            end
        end
    end
end

#Criando alguns posts
post1 = Post.new("title 1", "Author 2", "Content 1")
post2 = Post.new("Title 2", "Author 2", "Content 2")

#Adicionando os posts ao Blog
blog.add_post(post1)
blog.add_post(post2)

#Exibindo os posts específicos
blog.delete_post(post1)

#Exibindo a contagem de posts
blog.count_posts

#Buscando posts por autor
blog.search_posts_by_author("Author 2")
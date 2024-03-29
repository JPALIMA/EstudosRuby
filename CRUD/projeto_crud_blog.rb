class ApplicationController
end

class PostController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def edit
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.new(post_params)

        if @post.save
            redirect_to @post
        else
            render 'new'
        end
    end

    def update
        @post.update(post_params[:id])
        
    if @post.update(post_params)    
        redirect_to @post
    else
        render 'edit'
    end
end

def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to post_path
end

private

def post_params
    params.require(:post).permit(:title, :text)
  end
end
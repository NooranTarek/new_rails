class PostController < ApplicationController
    #__________________________________________________________________________
    def index
     	@posts=Post.all
    end
    #__________________________________________________________________________
    def new 
      	@post=Post.new
    end
    #__________________________________________________________________________ 
    def create
        @post = Post.new(title: params[:title], content: params[:content])
        if @post.save 
        redirect_to @post
        else
        render :new 
        end
    end
    #__________________________________________________________________________  
    def show
      	@post=Post.find(params[:id])
    end
    #__________________________________________________________________________  
    def edit
      	@post = Post.find(params[:id])
    end
    #__________________________________________________________________________  
    def update
          @post = Post.find(params[:id])
          if @post.update(post_params)
              redirect_to @post
          else
              render :edit
          end
      end
    #__________________________________________________________________________  
    def destroy
        @post = post.find(params[:id]) 
        @post.destroy
        redirect_to @post
    end
end
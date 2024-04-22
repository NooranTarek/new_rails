class PostController < ApplicationController
    def index
        post=Post.create({title:"last news",content:"the installation of rails is done successfullyyyyy"})
        puts post.inspect
    end
end
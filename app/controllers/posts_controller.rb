class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def new
	@post = Post.new
	end

 def create
	@post = Post.new(post_params)
	if @post.save
		redirect_to posts_path
	else
		render 'new'
	end
end

 def edit
 end

def show
@post = Post.find(params[:id])
end	

def destroy
@post = Post.find(params[:id])
@post.destroy
redirect_to posts_path
end

def delete
@post = Post.find(params[:id])
@post.destroy
redirect_to posts_path
end

 private
	def post_params
	params.require(:post).permit(:title, :body, :latitude, :longitude, :user_id)
	end
end

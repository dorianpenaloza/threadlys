class PostsController < ApplicationController
def index

	@new_post = Post.new 
	@all_posts = Post.all
end

def create
	@new_post = Post.new(post_params)
	@new_post.save
	redirect_to '/posts'
end

private
	def post_params
		params.require(:post).permit(:comment, :string)
	end

end
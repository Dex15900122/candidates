class PostsController < ApplicationController
  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(create_params)
    
  end
  private

    def create_params
      params.require(:post).permit(:content)
    end
end

# frozen_string_literal: false

# https://gist.github.com/withoutwax/46a05861aa4750384df971b641170407
class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end

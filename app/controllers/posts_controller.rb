class PostsController < ApplicationController
    before_action :authenticate_admin!, except: [:index, :show]

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def show
    @post = Post.friendly.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @post = Post.friendly.find(params[:id])
  end

  def update
     @post = Post.friendly.find(params[:id])

    if @post.update(post_params)
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end

  def delete
    @post = Post.friendly.find(params[:id])
  end

  def destroy
    @post = Post.friendly.find(params[:id])

    if @post.destroy
      redirect_to(:action => 'index')
    else
      render('destroy')
    end
  end



  private
  def post_params
    params.require(:post).permit(:author, :title, :summary, :content, :color, :slug, :category_id)
  end
end

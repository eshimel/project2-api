class QuickPostController < ApplicationController
  before_action :set_quick_post, only: [:update, :destroy]

  # GET /quick_posts
  def index
    @quick_posts = QuickPost.all

    render json: @quick_posts
  end

  # GET /quick_posts/1
  def show
    @quick_post = QuickPost.find(params[:id])

    render json: @quick_post
  end

  # POST /quick_posts
  def create
    @quick_post = current_user.quick_posts.new(quick_post_params) #makes this, this user's quick_post.

    if @quick_post.save
      render json: @quick_post, status: :created, location: @quick_post
    else
      render json: @quick_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH /quick_posts/1
  def update
    if @quick_post.update(quick_post_params)
      head :no_content
    else
      render json: @quick_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quick_posts/1
  def destroy
    @quick_post.destroy

    head :no_content
  end

  def set_quick_post
    @quick_post = current_user.quick_posts.find(params[:id])
  end

  def quick_post_params
    params.require(:quick_post).permit(:One_To_Ten)
  end

  private :set_quick_post, :quick_post_params
end
end

class PostsController < ApplicationController
  before_action :authenticate_user,  only: [:edit, :update, :create, :destroy ]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    render json: {posts: @posts}
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
      @post = Post.find(params[:id])
    render json: @posts
  end

  # GET /posts/new
  def new
    @post = Post.new
    render json: {posts: @post}
  end

  # POST /posts
  # POST /posts.json
  def create
    @post= Post.create(
      title: params[:post][:title], 
      post: params[:post][:post], 
      user_id: current_user.id
    )

    if @post
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update

  @post = Post.update(params[:id], post_params)
    if @post
      render json: @post 
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post =Post.destroy(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
 
    def post_params
      params.require(:post).permit(:post, :title)
    end 
  
end

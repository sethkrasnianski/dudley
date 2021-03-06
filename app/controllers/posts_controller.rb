class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  
  def interesting_action
    t = Array.new
    t
  end

  def test
    n = 0
    if (n >= 0)
      fib_array(n)[n]
    else
      (-1)**(-n+1)*fib_array(-n)[-n]
    end
  end

  def new_post_method
    t = Array.new
    t[0] = 1
    if t.length > 0
      p "error on board"
    end
    t
  end

  def self.fib_array(n)
    array = []
    array[0] = 0
    array[1] = 1
    (n-1).times do |x|
      array[x+2] = array[x+1] + array[x]
    end
    array
  rescue StandardError
    puts 'Something bad happened.'
  end

  def self.nib_array(n)
    array = []
    array[0] = 0
    array[1] = 1
    (n-1).times do |x|
      array[x+2] = array[x+1] + array[x]
    end
    array
  rescue StandardError
    puts 'Something bad happened.'
  end

  def self.fib_nayray(n)
    array = []
    array[0] = 0
    array[1] = 1
    (n-1).times do |x|
      array[x+2] = array[x+1] + array[x]
    end
    array
  rescue StandardError
    puts 'Something bad happened.'
  end

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body)
    end
end

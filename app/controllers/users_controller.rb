class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def self.fib n
    if !(n >= 0) then
      (-1)**(-n+1)*fib_array(-n)[-n]
    else
      fib_array(n)[n]
    end
  end
  
  def self.play_ray n
    begin
      array = Array.new
      array[0] = 0
      array[1] = 1
      (n-1).times { |x|
        array[x+2] = array[x+1] + array[x]
      }
      return array
    rescue Exception
      puts "Something bad happened."
    end
  end

  def self.nib n
    if !(n >= 0) then
      (-1)**(-n+1)*fib_array(-n)[-n]
    else
      fib_array(n)[n]
    end
  end

  def self.fix(n)
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

  def self.ray_charles(n)
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

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password)
    end
end

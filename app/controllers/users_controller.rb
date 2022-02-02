class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    
    @user = User.create user_params

    if params[:user][:image].present?
      #forward the uploaded image on to cloudinary
      response = Cloudinary::Uploader.upload params[:user][:image]
      @user.image = response['public_id']
    end

    @user.save

    if @user.persisted?
    redirect_to root_path
    else
      render :new
    end


  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]

    
  end

  def destroy
  end

  private
  def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :bio)
  end

end

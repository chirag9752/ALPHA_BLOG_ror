class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_user, only: [:edit , :update]
  before_action :require_same_user, only: [:edit, :update, :destroy]


    def show
      @articles = @user.articles.paginate(page: params[:page], per_page: 2)
    end

    def new
      @user = User.new
    end

    def destroy
      @user.destroy if @user == current_user
      session[:user_id] = nil
      flash[:notice] = "Account and all associated articles successfully deleted"
      redirect_to articles_path
    end

    def index
      @users = User.paginate(page: params[:page], per_page: 5)
    end

    def edit
    end

    def update
        if @user.update(user_params)
        flash[:notice] = "your account info successfully updated"
        redirect_to users_path
          else
            render 'edit'
          end
    end

    # Note : Those user who have password already when we updating we don't need to enter password it's automatically updated but those user who don't
    # have password we have to enter the new password for them when we are updating then only we can update

    def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
            flash[:notice] = "welcome to the alpha blog #{@user.username}, you have successfully signed in"
            redirect_to articles_path
        else
            render 'new'
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

    def set_user
      @user = User.find(params[:id])
    end

    def require_same_user
      if current_user != @user && !current_user.admin?
        flash[:alert] = "you can only edit or delete your own account"
        redirect_to @user
      end
    end

end
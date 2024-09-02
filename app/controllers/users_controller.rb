class UsersController < ApplicationController

    def show
      @user = User.find(params[:id])
      @articles = @user.articles.paginate(page: params[:page], per_page: 2)
    end

    def new
      @user = User.new
    end

    def index
      @users = User.paginate(page: params[:page], per_page: 5)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
        flash[:notice] = "your account info successfully updated"
        redirect_to articles_path
          else
            render 'edit'
          end
    end

    # Note : Those user who have password already when we updating we don't need to enter password it's automatically updated but those user who don't
    # have password we have to enter the new password for them when we are updating then only we can update

    def create
        @user = User.new(user_params)
        if @user.save
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
end
class ArticlesController < ApplicationController
  
  before_action :set_article, only: [:edit, :update, :show, :destroy]
  # threw this we can able to use  

  def show
    # byebug              # it will stop the execution of server
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end

  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)       # search will paginate and go to github on down you got instruction
  end

  def new
    @article = Article.new
  end

  def edit
    # byebug

  end

  def create
    @article = Article.new(article_params)
    @article.user =  User.first                        # for user table because we don't make a frontend for adding specifically userId which is a foriegn key that's we do it manually
    if @article.save
      redirect_to @article, notice: 'Article was successfully entered or created.'
    else
      render 'new'
    end
  end

  def update

    if @article.update(article_params)
      flash[:notice] = 'Article was updated successfully.'
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
   
      @article.destroy
        redirect_to articles_path
  end


  private
  
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end

end


# To add pagination used to search gem paginate and go to github link 
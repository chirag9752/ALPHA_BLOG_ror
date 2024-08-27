class ArticlesController < ApplicationController

     def show
     # byebug              # it will stop the execution of server
      @article = Article.find(params[:id])
     end

     def index
     @article = Article.all
     end
end
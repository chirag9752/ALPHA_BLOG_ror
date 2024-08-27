class ArticlesController < ApplicationController

     def show
     # byebug              # it will stop the execution of server
      @article = Article.find(params[:id])
     end
end
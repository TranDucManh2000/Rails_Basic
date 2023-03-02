class BookController < ApplicationController
    def list
        @books = Book.all
        render :json => @books
    end
    def show
        @book = Book.find(params[:id])
        render :json => @book
    end
    def new
    end
    def create
    end
end

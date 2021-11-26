class BooksController < ApplicationController

  def index
    @books = Book.all
    respond_to do |format|
      format.html { @books }
      format.json {
        render json: { books: @books }
      }
    end
  end

  def assign_tag
    @tags = Tag.all
    @books = Book.all
  end

  def assign_tag_to
    tag = Tag.find_by_id(params[:tag_id])
    Book.where(id: params[:books_ids]).each do |book|
      BookTag.find_or_create_by(book_id: book.id, tag_id: tag.id)
    end
    redirect_to books_path
  end

end
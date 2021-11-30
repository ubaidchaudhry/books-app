class BooksController < ApplicationController

  def index
    @books = Book.all
    @tags = Tag.all
    handle_search
    respond_to do |format|
      format.html { @books }
      format.json { render json: { books: @books } }
    end
  end

    def destroy
      @books = Book.find(params[:id])
    @books.destroy
    redirect_to action: "index"
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

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_books
    @books = Book.find(params[:books_ids])
  end

  def handle_search
    @books = @books.joins(:tags).where("tags.id = ?", params["tag_id"]) if params["tag_id"].present?
    @books = @books.where(price: params["search_price"].to_i) if params["search_price"].present?
  end

end
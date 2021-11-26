require 'rails_helper'

RSpec.describe BooksController, :type => :controller do

  
  context "it assign tag to books" do 
    let!(:book) {Book.create(title: 'book', description: 'this is a eng' )}
    let!(:tag) {Tag.create(name: 'Science')}


    it 'it assign tag id to book id' do
      put :assign_tag_to, params: {books_ids: [book.id], tag_id: tag.id }
      expect(BookTag.last.book_id).to eq(book.id)
      expect(book.tags.count).to eq(1)
    end
  end

  context "get books" do 
    let!(:book) {Book.create(title: 'book', description: 'this is a eng' )}
    it 'it return all books' do
      get :index
      expect(response).to be_successful
    end
  end


end
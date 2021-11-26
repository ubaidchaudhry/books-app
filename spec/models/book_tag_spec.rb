require 'rails_helper'

RSpec.describe BookTag, :type => :model do
  context 'create book and tag' do
    let!(:book) {Book.create(title: 'book', description: 'this is a eng' )}
    let!(:tag) {Tag.create(name: 'Science')}
    it "is not valid without valid attributes" do
      expect(BookTag.new(tag_id: tag.id)).to_not be_valid
    end

    it "is not valid without valid attributes" do
      expect(BookTag.new(book_id: book.id )).to_not be_valid
    end

    it "is valid with a book and tag id" do
      expect(BookTag.new(book_id: book.id, tag_id: tag.id)).to be_valid
    end 

    it "is not valid because tag_id should be unique" do
      BookTag.create(tag_id: tag.id)
      expect(BookTag.new(tag_id: tag.id)).to_not be_valid
    end

    it "is valid because tag_id is unique" do
      BookTag.create(tag_id: tag.id)
      expect(BookTag.new(tag_id: tag.id)).to_not be_valid
    end
  end
end
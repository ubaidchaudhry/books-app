require 'rails_helper'

RSpec.describe Book, :type => :model do
  it "is valid with valid attributes" do
    expect(Book.new).to_not be_valid
  end

  it "is not valid without a description" do
    expect(Book.new(title: "Test")).to_not be_valid
  end 

  it "is not valid without a title" do
    expect(Book.new(description: "Test Description")).to_not be_valid
  end 

  it "is valid with a title and description" do
    expect(Book.new(title: "Test", description: "Test Description")).to be_valid
  end 

  it "is not valid because title should be unique" do
    Book.create(title: "Test", description: "Test description")
    expect(Book.new(title: "Test", description: "Test Description")).to_not be_valid
  end

  it "is valid because title is be unique" do
    Book.create(title: "Test", description: "Test description")
    expect(Book.new(title: "Test1", description: "Test1 Descriptions")).to be_valid
  end
end
require 'rails_helper'

RSpec.describe Tag, :type => :model do
  it "is not valid without name" do
    expect(Tag.new).to_not be_valid
  end 

  it "is not valid because title should be unique" do
    Tag.create(name: "Test")
    expect(Tag.new(name: "Test")).to_not be_valid
  end

  it "is valid because title is be unique" do
    Tag.create(name: "Test")
    expect(Tag.new(name: "Test1")).to be_valid
  end
end
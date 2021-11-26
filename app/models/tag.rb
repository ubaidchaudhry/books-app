class Tag < ApplicationRecord
  has_many :book_tags
  has_many :books, through: :book_tags

  validates :name, length: { maximum: 255 }, uniqueness: true
  validates :name, presence: true
end

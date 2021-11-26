class Book < ApplicationRecord
  has_many :book_tags
  has_many :tags, through: :book_tags

  validates :title, length: { maximum: 255 },  uniqueness: true, presence: true
  validates :description, presence: true
end

class CreateBookTags < ActiveRecord::Migration[6.1]
  def change
    create_table :book_tags do |t|
      t.references :book
      t.references :tag
      t.timestamps
    end
  end
end

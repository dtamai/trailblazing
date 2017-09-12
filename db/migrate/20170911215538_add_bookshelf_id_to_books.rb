class AddBookshelfIdToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :bookshelf_id, :bigint
    add_foreign_key :books, :bookshelves, column: :bookshelf_id
  end
end

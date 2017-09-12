class BookshelfForm
  include ActiveModel::Model

  attr_accessor :books

  def save
    Bookshelf.transaction do
      book_models = books.map { |fragment| BookForm.new(fragment).save }
      Bookshelf.create!(books: book_models)
    end
  end

  class BookForm
    include ActiveModel::Model

    attr_accessor :title, :author_name

    validates :title, presence: true, uniqueness: true
    validates :author_name, presence: true

    def save
      return unless valid?

      author = Author.find_or_create_by(name: author_name)
      Book.find_or_create_by!(author: author, title: title)
    end
  end
end
